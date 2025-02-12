document.addEventListener('DOMContentLoaded', function() {
    // Contoh: Memuat produk dari API atau database
    fetch('php/product_live.php')
        .then(response => response.text())
        .then(data => {
            document.getElementById('live-product').innerHTML = data;
        });
});
