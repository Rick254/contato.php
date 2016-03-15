<html lang="pt-br">
<head>
<link rel="icon" href="favicon.png"/>
<meta http-equiv="content-type" content="text/html" charset="UTF-8" />
<title>Atelier Illuminati</title>
</head>

<body>
<?php
$servidor = "localhost";
$banco = "my_banco";
$usuario = "banco_contato";
$senha = "";
$link = mysql_connect($servidor, $usuario, $senha);
$db = mysql_select_db($banco, $link);
if(!$link)
{
	echo "erro ao conectar ao banco de dados!";exit();
}

?>

<?php
$nome        = $_POST['nome'];
$sobrenome   = $_POST['sobrenome'];
$endereco    = $_POST['endereco'];
$numero      = $_POST['numero'];
$complemento = $_POST['complemento'];
$bairro      = $_POST['bairro'];
$cidade      = $_POST['cidade'];
$estado      = $_POST['estado'];
$cep         = $_POST['cep'];
$telefone    = $_POST['telefone'];
$rg          = $_POST['rg'];
$cpf         = $_POST['cpf'];
$curso       = $_POST['curso'];
$checkbox    = $_POST['checkbox'];
$email       = $_POST['email'];
$login       = $_POST['login'];
$senha       = $_POST['senha'];

$sql = mysql_query("INSERT INTO contato(nome, sobrenome, endereco, numero, complemento, bairro, cidade, estado, cep, telefone, rg, cpf, curso, checkbox, email, login, senha)
                                                  VALUES('$nome', '$sobrenome', '$endereco', '$numero', '$complemento', '$bairro', '$cidade', '$estado', '$cep', '$telefone', '$rg', '$cpf', '$curso', '$checkbox', '$email', '$login', '$senha')");
echo "<center><h1>Sua inscrição foi realizada!</h1></center>";
?>


<?php

$MailToAddress = "contato@atelierilluminati.com.br"; 
$redirectURL = "http://www.atelierilluminati.com.br/resposta.html"; 
$MailSubject = "[Mensagem enviada pelo site]"; 


?>

</body>
</html>
