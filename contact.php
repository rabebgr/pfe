<?php
$last_name=$_POST["Prénom"];
$email=$_POST["Email"];
$message=$_POST["Message"];
$conn = mysqli_connect("127.0.0.1", "root", "", "client");

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO contacter (Prénom, Email, Message) VALUES (?, ?, ?)";
$stmt = mysqli_prepare($conn, $sql);

// Bind parameters (prevents SQL injection)
mysqli_stmt_bind_param($stmt, "sss", $last_name, $email, $message);

if (mysqli_stmt_execute($stmt)) {
    echo "Ajout avec succès!";
} else {
    echo "Une erreur est survenue."; // Generic error message for security
}

mysqli_stmt_close($stmt);
mysqli_close($conn);