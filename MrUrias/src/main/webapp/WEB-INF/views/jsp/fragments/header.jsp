<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>header</title>

<script src="/resources/core/lib/angularjs/angular.min.js"></script>
<spring:url value="/resources/core/css/mercadolivre.css" var="mercadoCss" />
<script src="/resources/core/lib/owl.carousel/owl-carousel/owl.carousel.css"></script>
<script src="/resources/core/lib/raty/lib/jquery.raty.css"></script>
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<spring:url value="/user/add" var="cadastropage"/>
<spring:url value="/user/shop" var="shoppage"/>
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${mercadoCss}" rel="stylesheet" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<spring:url value="/user/pesquisa" var="pesquisa"/>

</head>
<body>

		<header>

			<div class="container">
                            <a href="index.html"><img  id="logotipo" src="resources/core/img/Mercado-Livre-logo2.png" alt="Logotipo" width="159" height="80"></a>
			</div>



			<div class="container">

				<div class="row">

					<nav id="menu" class="pull-right">
						<ul>
							<li class="search">
									<div class="input-group">



								      <span class="input-group-btn">
								        <button type="button"><i class="fa fa-search"></i></button>
								      </span>
								    </div><!-- /input-group -->
								</li>
                            <li><a href="${cadastropage}">Cadastre-se</a></li>
							<li><a href="entre.jsp">Entre</a></li>
							<li><a href="${shoppage}">Shop</a></li>
							<li><a href="vender.jsp">Vender</a></li>


						</ul>
					</nav>

				</div>

			</div>








