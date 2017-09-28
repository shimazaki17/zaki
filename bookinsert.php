<?php
//1. POST受信
$name=$_POST["name"];
$url=$_POST["url"];
$naiyou=$_POST["naiyou"];
//2. DB接続
try {
  $pdo = new PDO('mysql:dbname=gs_db21;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('DbConnectError:'.$e->getMessage());
}

//３．SQLを作って実行
$stmt = $pdo->prepare("INSERT INTO gs_bm_table(id, 書籍名,書籍URL, 書籍コメント,登録日時)VALUES(NULL, :name, :url, :naiyou, sysdate())");
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':url', $url, PDO::PARAM_STR);
$stmt->bindValue(':naiyou', $naiyou, PDO::PARAM_STR);
$status = $stmt->execute();

//４．
if($status==false){
  $error = $stmt->errorInfo();
  exit("QueryError:".$error[2]);
  
}else{
  header("Location: soushin.php");
  exit;
    
}
?>
