<?php
include 'config.php';

$sql = "SELECT * FROM products WHERE live=1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<div class='product'>";
        echo "<h3>" . $row['name'] . "</h3>";
        echo "<p>" . $row['description'] . "</p>";
        echo "<p>Harga: $" . $row['price'] . "</p>";
        echo "</div>";
    }
} else {
    echo "Tidak ada produk live saat ini.";
}
?>
