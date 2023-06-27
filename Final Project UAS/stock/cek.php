<!-- cek apakah sudah login -->
<?php 
    session_start();
    if(!isset($_SESSION['username'])){
        header("location:../index.php?pesan=belum_login");
    }
?>