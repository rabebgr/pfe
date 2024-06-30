<?php
// $productsData = json_decode($products, true);


$conn = mysqli_connect("localhost", "root", "", "client");

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
function insertData($conn, $checkoutData, $checkoutProductsData)
{
    // Start transaction
    $conn->begin_transaction();

    try {
        $name = $_POST["Nom"];
        $last_name = $_POST["Prénom"];
        $email = $_POST["Email"];
        $Pays = $_POST["Pays"];
        $phone = $_POST["Téléphone"];
        $address = $_POST["address"];
        $products = $_POST["products"];
        $productsData = json_decode($products, true);
        echo gettype($productsData);
        // Insert data into checkout table
        $stmt = $conn->prepare("INSERT INTO checkout ( customer_id,  total_amount, Nom, Prénom, Email, Pays, Téléphone, addresse  ) VALUES (  ?, ?, ?,?, ?, ?, ?, ?)");
        $stmt->bind_param("idssssss", $checkoutData['customer_id'], $checkoutData['total_amount'], $name, $last_name, $email, $Pays, $phone, $address);
        $stmt->execute();
        $checkout_id = $stmt->insert_id;
        $stmt->close();
        // Insert data into products table


        // Insert data into checkout_products table
        $stmt = $conn->prepare("INSERT INTO checkout_products ( checkout_id,product_id ) VALUES (?, ?)");
        foreach ($productsData as $cp) {
            $stmt->bind_param("ii", $checkout_id, $cp['id']);
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
    insertData($conn, $checkoutData, $checkoutProductsData);
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

