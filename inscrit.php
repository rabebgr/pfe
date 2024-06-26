<?php
$name=$_POST["Nom"];
$last_name=$_POST["Prénom"];
$email=$_POST["Email"];
$Pays=$_POST["Pays"];
$phone=$_POST["Téléphone"];

$conn = mysqli_connect("localhost", "root", "", "client");

// Check connection
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}

$sql = "INSERT INTO inscrit (Nom, Prénom, Email, Pays, Téléphone) VALUES (?, ?, ?, ?, ?)";

$stmt = mysqli_prepare($conn, $sql);

// Bind parameters (prevents SQL injection)
mysqli_stmt_bind_param($stmt, "sssss", $name, $last_name, $email, $Pays, $phone);

if (mysqli_stmt_execute($stmt)) {
	echo "Ajout avec succès!";
} else {
	echo "Une erreur est survenue."; // Generic error message for security
}