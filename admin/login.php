<?php include_once 'include/init.php';?>
<?php
 if (isset($_POST['login'])) {
     $input_email = clean($_POST['input_email']);
     $input_password= clean($_POST['input_password']);
     $logged = Users::user_account_login($input_email, $input_password);

     if($logged) {
         $session->login($logged);
         redirect_to("dashboard.php");
     } else {
         redirect_to("login.php");
         $session->message("
            <div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">
              <strong><i class='mdi mdi-alert'></i></strong>  Invalid email or password. Please try again
              <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">
                <span aria-hidden=\"true\">&times;</span>
              </button>
            </div>");
     }
 }
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Silahkan Masuk</title>
 
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <link href="../css/signin.css" rel="stylesheet">
    <style>
        body {
            background: url("../images/logo/bgw.jpg");
         
            background-size: 100%;
        }
        
        .form-signin {
            background: rgba(255, 255,255, 0.4);
        }
    </style>
</head>

<body class="text-center">
<form class="form-signin" action="" method="post">
    <a href="index.php"><img class="mb-4" src="../images/logo/kpn.png" width="190" ></a>
    <h5 class="h5 mb-3 font-weight-normal" style="color:#222">Login Sebagai Administrator</h5>
    <?php
        if ($session->message()) {
            echo $session->message();
        }
    ?>
    <label for="inputEmail" class="sr-only">Alamat Email</label>
    <input type="text" id="inputEmail" name="input_email" class="form-control" placeholder="Alamat Email" required autofocus>

    <label for="inputPassword" class="sr-only">Kata Sandi</label>
    <input type="password" id="inputPassword" name="input_password" class="form-control" placeholder="Kata Sandi" required>

    <button class="btn btn-md btn-danger btn-block" type="submit" name="login">Masuk</button>
    <p class="mt-5 mb-3 text-muted">&copy; <?php echo date('Y')?></p>
</form>
<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $('.your-checkbox').prop('indeterminate', true);
</script>
</body>
</html>
