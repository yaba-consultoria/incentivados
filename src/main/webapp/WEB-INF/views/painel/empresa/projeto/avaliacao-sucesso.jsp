<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html lang="pt-br">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${path}/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${path}/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Incentivados - Cadastro de Projeto
  </title>
  <meta content='width=device-width, initial-scale=2.5, maximum-scale=2.5, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     FONTAWESOME     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet"/>
  <link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet">
  <!--     BOOTSTRAP     -->
  <link href="${path}/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.2/css/bootstrap-select.min.css" rel="stylesheet">
  <!--     CUSTOM     -->
  <link href="${path}/assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
  <link href="${path}/assets/css/style.css" rel="stylesheet" />
  <style type="text/css">
    .label-quest{
      font-size: 1.05rem !important;
    }
  </style>
</head>

<body class="">
<div class="wrapper ">
  <!-- Sidebar -->
  <div class="sidebar" data-color="verde" data-active-color="white">
    <div class="logo">
      <a href="#" class="simple-text logo-mini">
        <div class="logo-image-small">
          <i class="far fa-user"></i>
        </div>
      </a>
      <a href="${path}/painel/perfil" class="text-white logo-normal">Bem vindo, ${usuario.nome}.</a>
    </div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li>
          <a href="${path}/painel/dashboard">
            <i class="fas fa-desktop"></i>Painel Principal
          </a>
        </li>
        <li>
          <a href="${path}/painel/entidades">
            <i class="fas fa-users"></i>Entidades
          </a>
        </li>
        <li class="active">
          <a href="${path}/painel/projetos">
            <i class="fas fa-project-diagram"></i>Projetos
          </a>
        </li>
        <li>
          <a href="${path}/documentos/manual-do-usuario.pdf" target="_blank">
            <i class="far fa-question-circle"></i>Tutorial
          </a>
        </li>
        <li>
            <a href="${path}/painel/ranking"><i class="far fa-chart-bar"></i>Ranking</a>
        </li>
      </ul>
    </div>
  </div>
  <div class="main-panel">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
      <div class="container-fluid">
        <div class="navbar-wrapper">
          <div class="navbar-toggle">
            <button type="button" class="navbar-toggler">
              <span class="navbar-toggler-bar bar1"></span>
              <span class="navbar-toggler-bar bar2"></span>
              <span class="navbar-toggler-bar bar3"></span>
            </button>
          </div>
          <b><a class="navbar-brand" href="#">Projetos <i class='fas fa-angle-double-right'></i> Avaliação</a> </b>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-bar navbar-kebab"></span>
          <span class="navbar-toggler-bar navbar-kebab"></span>
          <span class="navbar-toggler-bar navbar-kebab"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navigation">
          <ul class="navbar-nav">
            <li class="nav-item btn-rotate dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-power-off"></i>
                <p><span class="d-lg-none d-md-block">Ações</span></p>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="${path}/painel/perfil">Meus Dados</a>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#modal-alterar-senha">Alterar Senha</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="${path}/sair">Sair</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="content">        
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header bg-success"><h4 class="card-title text-white bold"><i class="far fa-thumbs-up fa-2x"></i> Cadastro Realizado!</h4><hr></div>              
              <div class="card-body bg-success">
                <p class="text-white">O projeto <strong>${projeto.titulo}</strong> foi avaliado com sucesso.</p>
                <p><a href="${path}/painel/projetos" class="btn btn-warning"><i class="far fa-share-square"></i> Voltar</a></p>
              </div>
              <div class="card-footer bg-success"></div>
            </div>
          </div>
        </div>              
      </div>
    <c:import url="/WEB-INF/views/componentes/footer/painel/footer.jsp" />
  </div>
</div>

<!-- MODALS -->
<c:import url="/WEB-INF/views/componentes/modal/modal-alterar-senha.jsp" />
  
<!--   JQUERY   -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!--   POPPER   -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!--   BOOTSTRAP   -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.2/js/bootstrap-select.min.js"></script>
<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
<script type="text/javascript" src="${path}/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<script type="text/javascript" src="${path}/assets/js/paper-dashboard.min.js?v=2.0.0"></script>

</body>

</html>