<?php
include 'dbconnect.php';

// Memeriksa apakah form telah disubmit
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Mengambil nilai dari form
    $email = $_POST['email'];

    // Memeriksa apakah email telah terdaftar dalam tabel
    $query = "SELECT * FROM slogin WHERE email = '$email'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        // Email ditemukan, lakukan langkah reset password
        $message = "Permintaan reset password berhasil. Silakan cek email Anda untuk instruksi selanjutnya.";
        // Tambahkan langkah-langkah reset password sesuai kebutuhan
    } else {
        $message = "Email tidak terdaftar. Silakan coba lagi.";
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

    <title>SB Admin 2 - Forgot Password</title>

    <!-- Custom fonts for this template-->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="stock/assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body style="background-color: #444444;">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
                            <div class="col-lg-6" style="background-color: #333333;">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-light mb-2">Forgot Your Password?</h1>
                                        <p class="mb-4">We get it, stuff happens. Just enter your email address below
                                            and we'll send you a link to reset your password!</p>
                                    </div>
                                    <form class="user" method="POST" action="">
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user" id="exampleInputEmail" name="email" aria-describedby="emailHelp" placeholder="Enter Email Address..." required>
                                        </div>
                                        <div class="message">
                                            <?php
                                            if (!empty($message)) {
                                                echo '<p class="alert alert-danger">' . $message . '</p>';
                                            }
                                            ?>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block">Reset Password</button>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="register.php">Create an Account!</a>
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