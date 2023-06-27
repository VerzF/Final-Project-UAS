<?php
// Memulai sesi
session_start();

// Koneksi ke database
include 'dbconnect.php';

// Verifikasi login
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Periksa apakah cookie 'remember_username' ada
    if (isset($_COOKIE['remember_username']) && !isset($username)) {
        // Isi nilai $username dengan nilai cookie
        $username = $_COOKIE['remember_username'];
    }

    $username = $_POST['username'];
    $password = hash('sha256', $_POST['password']);

    // Query untuk mencari pengguna dengan username dan password yang sesuai
    $query = "SELECT * FROM slogin WHERE username='$username' AND password='$password'";
    $result = $conn->query($query);

    if ($result->num_rows == 1) {
        // Login berhasil
        // Set session username
        $_SESSION['username'] = $username;

        // Cek apakah checkbox "Remember Me" dicentang
        if (isset($_POST['remember'])) {
            // Simpan nilai username dalam cookie
            setcookie('remember_username', $username, time() + (86400 * 30), '/');
        }

        // Redirect ke halaman utama
        header('Location: stock/index.php');
        exit;
    } else {
        // Login gagal
        // Redirect ke halaman login setelah 3 detik
        header('Refresh: 3; URL=index.php');
        // Tampilkan pesan error
        echo '<body style="background-color: #444444; color: #F8F9FC; display: flex; align-items: center; justify-content: center; height: 100vh; margin: 0; padding: 0; text-align: center; font-family: Poppins, sans-serif;">';
        echo '<div>';
        echo '<h1 style="color: #F6C23E;">Username atau password salah</h1>';
        echo '<br>';
        echo '<h3>Anda akan dikembalikan ke halaman login dalam <span style="color: #E74A3B;" id="countdown">3</span> detik.</h3>';
        echo '</div>';
        echo '<script>
        var seconds = 3;
        var countdown = setInterval(function() {
            seconds--;
            document.getElementById("countdown").textContent = seconds;
            if (seconds <= 0) {
                clearInterval(countdown);
            }
        }, 1000);
      </script>';
        echo '</body>';
        exit;
    }
}
?>
