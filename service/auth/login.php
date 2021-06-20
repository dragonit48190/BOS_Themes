<?php
/**
 **** AppzStory Back Office Management System Template ****
 * PHP Login API
 * 
 * @link https://appzstory.dev
 * @author Yothin Sapsamran (Jame AppzStory Studio)
 */
header('Content-Type: application/json');
require_once '../connect.php';

/**
 * $_POST['username']
 * $_POST['password']
 */

 if($_SERVER['REQUEST_METHOD'] === "POST"){
     $stmt = $conn->prepare("SELECT * FROM users WHERE username = :username ");
     $stmt->execute(array(":username" => $_POST['username']));
     $row = $stmt->fetch(PDO::FETCH_OBJ);

     if(!empty($row) && password_verify($_POST['password'], $row->password) ){
        $_SESSION['AD_ID'] = $row->u_id;
        $_SESSION['AD_FIRSTNAME'] = $row->firstname;
        $_SESSION['AD_LASTNAME'] = $row->lastname;
        $_SESSION['AD_USERNAME'] = $row->username;
        $_SESSION['AD_IMAGE'] = $row->image;
        $_SESSION['AD_STATUS'] = $row->status;
        $_SESSION['AD_LOGIN'] = $row->update_at;

        echo json_encode("SUCCESS");

     }else{
        echo "ไม่มีข้อมูล User คนนี้";
     }

   




     
 }else{
     echo "ไม่ถูกต้อง";
 }
