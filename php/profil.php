<?php
session_start();
include 'config.php';

if (!isset($_SESSION['username'])) {
    header('Location: login.html');
    exit();
}

$username = $_SESSION['username'];
$sql = "SELECT * FROM users WHERE username='$username'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo "Nama: " . $row['name'] . "<br>";
    echo "Email: " . $row['email'] . "<br>";
} else {
    echo "Data tidak ditemukan.";
}
?>
