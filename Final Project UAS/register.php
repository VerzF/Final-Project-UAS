<?php
include 'dbconnect.php';

// Memeriksa apakah form telah disubmit
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Mengambil nilai dari form
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $repeatPassword = $_POST['repeat_password'];
    $message = '';

    // Memeriksa apakah ada input yang kosong
    if (empty($username) || empty($email) || empty($password) || empty($repeatPassword)) {
        $message = "Harap isi semua kolom. Silakan coba lagi.";
    } elseif ($password !== $repeatPassword) {
        $message = "Password tidak cocok. Silakan ulangi.";
    } else {
        // Hash password sebelum menyimpannya ke database (ganti dengan algoritma hash yang sesuai)
        $hashedPassword = hash('sha256', $password);

        // Menyimpan data pengguna ke tabel
        $query = "INSERT INTO slogin (username, password, nickname, role, email) VALUES ('$username', '$hashedPassword', 'Admin', 'Warehouse Administrator', '$email')";
        $result = mysqli_query($conn, $query);

        if ($result) {
            echo "Registrasi berhasil. Pengguna telah ditambahkan ke database. Anda akan dialihkan ke halaman login.";
            // kembali ke halaman login dalam 3 detik
            header("refresh:3; url=index.php");
        } else {
            echo "Terjadi kesalahan. Registrasi gagal.";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Register</title>

    <!-- Custom fonts for this template-->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="stock/assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body style="background-color: #444444;">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7" style="background-color: #333333;">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-light mb-4">Create an Account!</h1>
                            </div>
                            <form class="user" method="POST" action="">
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="exampleUserName" placeholder="User Name" name="username" required>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="Email Address" name="email" required>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password" name="password" required>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Repeat Password" name="repeat_password" required>
                                    </div>
                                </div>
                                <div class="message">
                                    <?php
                                    if (!empty($message)) {
                                        echo '<p class="alert alert-danger">' . $message . '</p>';
                                    }
                                    ?>
                                </div>
                                <button type="submit" class="btn btn-primary btn-user btn-block">Register Account</button>
                                <hr>
                                <a href="index.php" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.php" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.php">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="index.php">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="stock/assets/js/vendor/jquery.min.js"></script>
    <script src="stock/assets/js/bootstrap.min.js"></script>

    <!-- FontAwesome -->
    <script src="https://kit.fontawesome.com/42e7da2808.js" crossorigin="anonymous"></script>

    <!-- Core plugin JavaScript-->
    <script src="stock/assets/js/vendor/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="stock/assets/js/sb-admin-2.min.js"></script>

</body>

</html>