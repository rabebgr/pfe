<?php


$conn = mysqli_connect("localhost", "root", "", "client");

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
function insertData($conn, $checkoutData, $productsData, $checkoutProductsData)
{
    // Start transaction
    $conn->begin_transaction();

    try {
        $name = $_POST["Nom"];
        echo $name;
        $last_name = $_POST["Prénom"];
        $email = $_POST["Email"];
        $Pays = $_POST["Pays"];
        $phone = $_POST["Téléphone"];
        $address = $_POST["address"];
        $products = $_POST["products"];
        // Insert data into checkout table
        $stmt = $conn->prepare("INSERT INTO checkout ( customer_id,  total_amount, Nom, Prénom, Email, Pays, Téléphone, addresse  ) VALUES (  ?, ?, ?,?, ?, ?, ?, ?)");
        $stmt->bind_param("idssssss", $checkoutData['customer_id'], $checkoutData['total_amount'], $name, $last_name, $email, $Pays, $phone, $address);
        $stmt->execute();
        $checkout_id = $stmt->insert_id;
        echo $checkout_id;
        $stmt->close();
        // Insert data into products table


        // Insert data into checkout_products table
        $stmt = $conn->prepare("INSERT INTO checkout_products ( checkout_id,product_id, quantity ) VALUES (?,?, ?)");
        foreach ($checkoutProductsData as $cp) {
            $stmt->bind_param("iii", $checkout_id, $cp['product_id'], $cp['quantity']);
            $stmt->execute();
        }
        $stmt->close();

        // Commit transaction
        $conn->commit();
    } catch (Exception $e) {
        // Rollback transaction on error
        $conn->rollback();
        throw $e;
    }
}
$checkoutData = [
    'customer_id' => 123,
    'total_amount' => 309.97
];

$productsData = [
    [
        'name' => 'Sparkling Sapphire Earrings',
        'description' => 'Elegant dangle earrings featuring shimmering sapphires set in sterling silver',
        'price' => 129.99,
        'image' => 'images/dynamic-assets/earring.jpeg',
        'category' => 'Earrings'
    ],
    [
        'name' => 'Men\'s Leather Bracelet with Silver Clasp',
        'description' => 'A rugged yet stylish bracelet featuring braided black leather and a polished silver clasp',
        'price' => 79.99,
        'image' => 'images/leather_bracelet.jpeg',
        'category' => 'Bracelets'
    ]
];

$checkoutProductsData = [
    [
        'checkout_id' => 1,
        'product_id' => 1,
        'quantity' => 2
    ],
    [
        'checkout_id' => 1,
        'product_id' => 3,
        'quantity' => 1
    ]
];

// Insert data
try {
    insertData($conn, $checkoutData, $productsData, $checkoutProductsData);
    echo "Data inserted successfully.";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}

// Close connection
$conn->close();

// $sql = "INSERT INTO checkout (Nom, Prénom, Email, Pays, Téléphone, addresse,products) VALUES (?, ?, ?, ?, ?, ?,?)";

// $stmt = mysqli_prepare($conn, $sql);

// // Bind parameters (prevents SQL injection)
// mysqli_stmt_bind_param($stmt, "sssssss", $name, $last_name, $email, $Pays, $phone, $address, $products);

// if (mysqli_stmt_execute($stmt)) {
//     echo "Ajout avec succès!";
// } else {
//     echo "Une erreur est survenue."; // Generic error message for security
// }

