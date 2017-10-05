<?php
//1. POST受信
$book_name=$_POST["book_name"];
$url=$_POST["url"];
$comments=$_POST["comments"];
//2. DB接続
try {
  $pdo = new PDO('mysql:dbname=gs_db21;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('DbConnectError:'.$e->getMessage());
}

//３．SQLを作って実行
$stmt = $pdo->prepare("INSERT INTO gs_bm_table(id, book_name, url, comments, datetime)VALUES(NULL, :book_name, :url, :comments, sysdate())");
$stmt->bindValue(':book_name', $book_name, PDO::PARAM_STR);
$stmt->bindValue(':url', $url, PDO::PARAM_STR);
$stmt->bindValue(':comments', $comments, PDO::PARAM_STR);
$status = $stmt->execute();

//４．
if($status==false){
  $error = $stmt->errorInfo();
  exit("QueryError:".$error[2]);
  
}else{
  header("Location: book_index.php");
  exit;
    
}
?>
