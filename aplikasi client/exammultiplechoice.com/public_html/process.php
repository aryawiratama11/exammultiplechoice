<?php
session_set_cookie_params(0);
session_start();
$soalid		= $_POST['id'];
$jawaban 	=  strtolower($_POST['jw']);
$answer 	=  strtolower($_POST['answ']);

if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 300)) {
    // request 30 minates ago
    session_destroy();
    session_unset();
}
$_SESSION['LAST_ACTIVITY'] = time();

unset($_SESSION['store_answer'][$soalid]);
if($jawaban == $answer){
	@$_SESSION['store_answer'][$soalid] = $answer;
}
echo json_encode($_SESSION['store_answer']);


?>