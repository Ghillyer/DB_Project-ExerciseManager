<!-- db.php -->

<?php

$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "exercisemanagementdb";

$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>
