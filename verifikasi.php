<?php

include('functions/conn.php');

if(isset($_GET['code'])){
    $code = $_GET['code'];
    $data = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM tb_user WHERE code = '$code'"));

    if(mysqli_query($conn, "UPDATE tb_user SET is_verify = 1 WHERE id_user = $data[id_user]")){
        // header('Location: login.php');
        echo '<script type="text/javascript">'; 
        echo 'alert("Berhasil Verifikasi");'; 
        echo 'window.location.href = "login.php";';
        echo '</script>';
        // echo 'ok';
    }
}
?>