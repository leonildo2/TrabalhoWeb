<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<spring:url value="/resources/core/css/mercadolivre.css" var="coreCss"/>
  <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss"/>
  <link href="${bootstrapCss}" rel="stylesheet"/>
  <link href="${coreCss}" rel="stylesheet"/>
  <spring:url value="/user/add" var="cadastropage"/>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <title>cadastro</title>
</head>
<body>
<header>

  <div class="container">
    <a href="index.html"><img id="logotipo"
                              src="/resources/core/img/Mercado-Livre-logo2.png"
                              alt="Logotipo" width="159" height="80"></a>
  </div>


  <div class="container">
    <div class="row">
      <nav id="menu" class="pull-right">
        <ul>
          <li class="search">
            <div class="input-group">
              <input type="search">
              <span class="input-group-btn">
                <button type="button"><i
                  class="fa fa-search"></i></button>
              </span>
            </div><!-- /input-group -->
          </li>
          <li><a href="${cadastropage}">Cadastre-se</a></li>
          <li><a href="entre.jsp">Entre</a></li>
          <li><a href="contato.jsp">Contato</a></li>
          <li><a href="vender.jsp">Vender</a></li>


        </ul>
      </nav>

    </div>

  </div>
  <div class="container">
<h2>Cadastro</h2>
<form:form method="post" action="add" modelAttribute="lolmen"></div>
<div class="container">
  <table>
    <tr>
      <td><form:input path="name" placeholder="Nome"/>Nome</td>
    </tr>
</div>
<div class="container">
    <tr>
      <td><form:input path="email" placeholder="Email"/>Email</td>
    </tr>
 <div class="container">
        <tr>
          <td><form:input path="password" placeholder="Senha"/>Senha</td>
        </tr>
</div>
      <td colspan="3">
        <input type="submit"/>
      </td>
    </tr>

    </table>



</form:form>


</body>
</html>