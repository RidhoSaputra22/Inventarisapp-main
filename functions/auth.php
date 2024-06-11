<?php
require('conn.php');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require '../vendor/autoload.php';

//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);


// print_r($_POST);

if(isset($_POST)){
    if(isset($_POST['login'])){
        $name = htmlspecialchars($_POST['username']);
        $pass = htmlspecialchars($_POST['password']);
        $sql = "SELECT * FROM `tb_user` WHERE `username` = '$name'";

        $res = viewData($sql, true);
        print_r($res);

        $db_pass = $res['password'];
        $db_id = $res['id_admin'];
        $db_nama = $res['nama'];



        try{
            if($pass == $db_pass && $res['is_verify'] == 1){
                session_start();
                $_SESSION['status'] = 'login';
                $_SESSION['id'] = $db_id;
                $_SESSION['nama'] = $db_nama;

                echo '<script type="text/javascript">'; 
                echo 'alert("Berhasil Login");'; 
                echo 'window.location.href = "../index.php";';
                echo '</script>';
            }else{
                echo '<script type="text/javascript">'; 
                echo 'alert("Login Gagal");'; 
                echo 'window.location.href = "../login.php";';
                echo '</script>';
        }   
        }catch(Exception $e){
            header("Location: ../login.php");
        }
    }

    if(isset($_POST['level']) && $_POST['level'] == 'regist'){
            $nama = $_POST['nama'];
            $alamat = $_POST['alamat'];
            $email = $_POST['email'];

            $hp = $_POST['hp'];
            $dms = $_POST['dms'];
            // $foto = $_POST['foto'];
            $username = $_POST['username'];
            $password = $_POST['password'];
            $role = "user";

            $code = md5($email.date('Y:i:H'));
    
            $newfilename = uploadFoto("../uploads/img/");
    
            $sql = "INSERT INTO `tb_user` (`id_user`, `nama`, `alamat`, `dms`, `email`, `hp`, `username`, `password`, `foto`, `code`, `is_verify`) VALUES (NULL, '$nama', '$alamat', '$dms', '$email', '$hp', '$username', '$password', '$newfilename', '$code', NULL)";

            try {
                //Server settings
                $mail->SMTPDebug = SMTP::DEBUG_OFF;                      //Enable verbose debug output
                $mail->isSMTP();                                            //Send using SMTP
                $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
                $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
                $mail->Username   = 'jelmadika451@gmail.com';                     //SMTP username
                $mail->Password   = 'tysoquayyilijrvk';                               //SMTP password
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
                $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
            
                //Recipients
                $mail->setFrom('from@dimensi.com', 'Verifikasi');
                $mail->addAddress($email, $nama);     //Add a recipient
                
            
                
                //Content
                $mail->isHTML(true);                                  //Set email format to HTML
                $mail->Subject = 'Here is the subject';
                $mail->Body    = 'Terimakasih Anda Telah Terregistrasi, Silahkan Verifikasi di Sini: <a href="http://localhost/project/Inventarisapp-main/verifikasi.php?code='.$code.'">Verifikasi</a>';
                $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
            
                if($mail->send()){
                    if (mysqli_query($conn, $sql)) {
                        exit("sukses");
                    } else {
                        exit("gagal");
                    }
                }else{
                    exit("gagal");
                }
                
                echo 'Message has been sent';
            } catch (Exception $e) {
                echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }

    }


}

// function login($data){
// global $conn;

//    

// }


