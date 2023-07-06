<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
  $textInput =  "<a>" . $_POST["textInput"] . "<a>";
  file_put_contents("sent.php", $textInput);
  header("Location: index.html");
  exit;
}
?>
