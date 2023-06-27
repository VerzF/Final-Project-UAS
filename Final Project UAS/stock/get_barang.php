<?php
// Koneksi ke database
$conn = mysqli_connect("localhost", "root", "root", "inventory");

// Mendapatkan keyword dari POST request
$keyword = $_POST['keyword'];

// Lakukan query untuk mendapatkan barang yang relevan dengan keyword
$query = "SELECT * FROM sstock_brg WHERE nama LIKE '%$keyword%' OR jenis LIKE '%$keyword%' OR merk LIKE '%$keyword%'";
$result = mysqli_query($conn, $query);

// Membangun daftar barang dalam bentuk HTML
$html = '<ul>';
while ($row = mysqli_fetch_assoc($result)) {
    $namaBarang = $row['nama'];
    $jenisBarang = $row['jenis'];
    $merkBarang = $row['merk'];
    $html .= '<li>' . $namaBarang . ' ' . $jenisBarang . ' ' . $merkBarang . '</li>';
}
$html .= '</ul>';

// Mengembalikan hasil dalam bentuk HTML
echo $html;
?>