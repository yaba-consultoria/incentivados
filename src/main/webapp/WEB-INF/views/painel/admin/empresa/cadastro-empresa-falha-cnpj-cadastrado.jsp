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
        Incentivados - Cadastro de Empresas
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
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="${path}/assets/css/style.css" rel="stylesheet"/>
</head>

<body class="">
<div class="wrapper ">
    <!-- Sidebar -->
    <div class="sidebar" data-color="verde" data-active-color="white">
        <div class="logo">
            <a href="#" class="simple-text logo-mini">
                <div class="logo-image-small"><i class="far fa-user"></i></div>
            </a>
            <a href="${path}/painel/perfil" class="text-white logo-normal">Bem vindo, ${usuario.nome}.</a>
        </div>
        <div class="sidebar-wrapper">
            <ul class="nav">
                <li>
                    <a href="${path}/painel/dashboard">
                        <i class="nc-icon nc-bank"></i>Painel Principal</a>
                </li>
                <li class="active">
                    <a href="${path}/painel/empresas">
                        <i class="fas fa-city"></i>Empresas</a>
                </li>
                <li>
                    <a href="${path}/painel/entidades">
                        <i class="fas fa-users"></i>Entidades</a>
                </li>
                <li>
                    <a href="${path}/painel/projetos">
                        <i class="fas fa-project-diagram"></i>Projetos</a>
                </li>
                <li>
                    <a href="${path}/painel/incentivos-fiscais">
                        <i class="fas fa-gavel"></i>Incentivos Fiscais</a>
                </li>
                <li>
                    <a href="${path}/painel/pedidos?filtro=TODOS&key=">
                        <i class="fas fa-praying-hands"></i>Pedidos</a>
                </li>
                <li>
                    <a href="${path}/painel/ranking">
                        <i class="far fa-chart-bar"></i>Ranking</a>
                </li>
                <li>
                    <a data-toggle="collapse" href="#graficos"><i class="fas fa-chart-line"></i>Gráficos<b
                            class="caret"></b></a>
                    <div class="collapse" id="graficos">
                        <ul class="nav">
                            <li>
                                <a data-toggle="collapse" href="#graficos-entidade" style="margin-left: 30px;"><i
                                        class="fas fa-users"></i>Entidades <b class="caret"></b></a>
                                <div class="collapse" id="graficos-entidade">
                                    <ul class="nav">
                                        <li>
                                            <a href="${path}/painel/graficos/entidades/linha-do-tempo"
                                               style="margin-left: 50px;"><i class="fas fa-chart-area"></i>Linha do
                                                Tempo</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a data-toggle="collapse" href="#graficos-projetos" style="margin-left: 30px;"><i
                                        class="fas fa-project-diagram"></i>Projetos <b class="caret"></b></a>
                                <div class="collapse" id="graficos-projetos">
                                    <ul class="nav">
                                        <li>
                                            <a href="${path}/painel/graficos/projetos/categoria"
                                               style="margin-left: 50px;"><i class="far fa-chart-bar"></i>Categoria</a>
                                        </li>
                                        <li>
                                            <a href="${path}/painel/graficos/projetos/mapa"
                                               style="margin-left: 50px;"><i class="fas fa-globe-americas"></i>Mapa</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a data-toggle="collapse" href="#graficos-pedidos" style="margin-left: 30px;"><i
                                        class="fas fa-praying-hands"></i>Pedidos <b class="caret"></b></a>
                                <div class="collapse" id="graficos-pedidos">
                                    <ul class="nav">
                                        <li>
                                            <a href="${path}/painel/graficos/pedidos/status" style="margin-left: 50px;"><i
                                                    class="fas fa-chart-pie"></i>Status</a>
                                        </li>
                                        <li>
                                            <a href="${path}/painel/graficos/pedidos/mapa" style="margin-left: 50px;"><i
                                                    class="fas fa-globe-americas"></i>Mapa</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
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
                    <b><a class="navbar-brand" href="#">Empresas <i class='fas fa-angle-double-right'></i> Cadastro</a></b>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation"
                        aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <ul class="navbar-nav">
                        <li class="nav-item btn-rotate dropdown">
                            <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-power-off"></i>
                                <p>
                                    <span class="d-lg-none d-md-block">Ações</span>
                                </p>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="${path}/painel/perfil">Meus Dados</a>
                                <a class="dropdown-item" href="#" data-toggle="modal"
                                   data-target="#modal-alterar-senha">Alterar Senha</a>
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
                        <div class="card-header bg-danger"><h4 class="card-title text-white bold"><i
                                class="far fa-thumbs-down fa-2x"></i> Falha!</h4>
                            <hr>
                        </div>
                        <div class="card-body bg-danger">
                            <p class="text-white"><span class="bold">CNPJ: ${empresa.cnpj}</span> já possui registro na
                                plataforma. Tente novamente informando outros dados.</p>
                            <p><a href="${path}/painel/empresas/cadastro" class="btn btn-warning rounded"><i
                                    class="fas fa-angle-double-left"></i> Voltar</a><a href="${path}/painel/empresas"
                                                                                       class="btn btn-warning rounded  ml-2"><i
                                    class="fas fa-list-ul"></i> Ver Registros</a></p>
                        </div>
                        <div class="card-footer bg-danger"></div>
                    </div>
                </div>
            </div>
        </div>
        <c:import url="/WEB-INF/views/componentes/footer/painel/footer.jsp"/>
    </div>
</div>

<!-- MODALS -->
<c:import url="/WEB-INF/views/componentes/modal/modal-alterar-senha.jsp"/>

<!--   JQUERY   -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!--   POPPER   -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<!--   BOOTSTRAP   -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
<script type="text/javascript" src="${path}/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<script type="text/javascript" src="${path}/assets/js/paper-dashboard.min.js?v=2.0.0"></script>
</body>

</html>