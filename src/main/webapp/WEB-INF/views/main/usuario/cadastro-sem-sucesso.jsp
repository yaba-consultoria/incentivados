<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-br">

<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="${path}/assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="${path}/assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>
        Incentivados - Cadastro de Usuários
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
          name='viewport'/>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
          integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!-- CSS Files -->
    <link href="${path}/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${path}/assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet"/>
    <link href="${path}/assets/css/style.css" rel="stylesheet"/>
</head>

<body class="bg-danger">
<div class="container h-100">
    <div class="d-flex justify-content-center h-100" style="margin-top: 30%;">
        <div class="alert alert-danger bg-danger" role="alert">
            <input type="hidden" name="redirect" value="${redirect}">
            <h1 class="alert-heading"><i class="fas fa-check fa-2x text-white align-middle"></i> <strong>Falha!</strong>
            </h1>
            <p class="lead">O cadastro foi não realizado devido a algum erro inesperado.</p>
            <p class="lead">Favor contate nosso suporte através do email <strong>suporte@incentivados.com.br</strong>.
            </p>
            <hr>
            <p class="mb-0 lead">Clique<a class="text-white" href="${path}/login"><strong> <u>aqui</u></strong></a> para
                voltar.</p>
        </div>
    </div>
</div>
</body>
<!--   Core JS Files   -->
<script src="${path}/assets/js/core/jquery.min.js"></script>
<script src="${path}/assets/js/core/popper.min.js"></script>
<script src="${path}/assets/js/core/jquery.maskedinput.js"></script>
<script src="${path}/assets/js/core/bootstrap.min.js"></script>
<script src="${path}/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Notifications Plugin    -->
<script src="${path}/assets/js/plugins/bootstrap-notify.js"></script>
<!-- VIA CEP API -->
<script type="text/javascript" src="api/via-cep.js"></script>
<!-- CUSTOM SCRIPT -->
<script type="text/javascript" src="${path}/assets/js/cpf-validator.js"></script>
<script type="text/javascript" src="${path}/assets/js/script.js"></script>
</body>

</html>