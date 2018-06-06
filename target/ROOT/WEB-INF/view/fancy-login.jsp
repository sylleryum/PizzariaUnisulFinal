<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="pt-br">

<head>
	
	<title>Login Page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Reference Bootstrap files -->
	<link rel="stylesheet"
		 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
        <link rel="stylesheet"
              href="<c:url value='/resources/estilo/estilo.css' /> ">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     
</head>

<body class="bg-verde">
    
	<div class=" container-fluid bg-amarelo">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                         <h1>Bem vindo ao sistema de pedido da Pizzaria X <br>
                         Usuario admin: funcadmin1 <br>
                         senha: Adm!n01</h1>
                    </div>
                </div>
            </div>
        </div>
	
    
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-6">


                    <div id="loginbox" style="margin-top: 50px;"
                            class="mainbox col-md-9">

                            <div class="panel panel-info">

                                    <div class="panel-heading">
                                            <div class="panel-title">Efetuar login</div>
                                    </div>

                                    <div style="padding-top: 30px" class="panel-body">

                                            <!-- Login Form, obrigat�rio-->
                                            <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST" class="form-horizontal">

                                                <!-- Mensagem de erro, logout, c:if obrigatorio ... -->
                                                <div class="form-group">
                                                    <div class="col-xs-15">
                                                        <div>

                                                                            <c:if test="${param.error != null}">											            
                                                                            <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                                                                                    Usuario ou senha incorreto.
                                                                            </div>
                                                                            </c:if>

                                                                            <c:if test="${param.logout != null}">	
                                                                            <div class="alert alert-success col-xs-offset-1 col-xs-10">
                                                                                    Logout efetuado com sucesso.
                                                                            </div>
                                                                        </c:if>

                                                        </div>
                                                    </div>
                                                </div>

                                                    <!-- User  -->
                                                    <div style="margin-bottom: 25px" class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 

                                                            <input type="text" name="username" placeholder="username" class="form-control">
                                                    </div>

                                                    <!-- Password -->
                                                    <div style="margin-bottom: 25px" class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 

                                                            <input type="password" name="password" placeholder="password" class="form-control" >
                                                    </div>

                                                    <!-- Login/Submit -->
                                                    <div style="margin-top: 10px" class="form-group">						
                                                            <div class="col-sm-6 controls">
                                                                    <button type="submit" class="btn btn-success">Entrar</button>
                                                            </div>
                                                    </div>

                                            </form:form>

                                            <a href="${pageContext.request.contextPath}/register">N�o tem cadastro? Registre-se</a>

                                    </div>

                            </div>

                    </div>
                </div>
                
                                            
                <div class="col-md-6">
                    <img src="<%=request.getContextPath()%>/resources/imagens/img1.png" alt=""/>
                </div>
            </div>
        </div>
    </div>
	

</body>
</html>