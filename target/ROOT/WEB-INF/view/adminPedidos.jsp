<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administração de pedidos</title>

	<script>
		function changeStatus(status, id) {
		    //var status = document.getElementById("statusP"+${pedido.getId()}).value;
		    
		    //var id = document.getElementById("theId").innerHTML;
		    console.log(status);
		    console.log(id);
		    //document.write(status);
		    window.location.href = '${pageContext.request.contextPath}/admin/changeStatus?status='+status+'&theId='+id;
		}
	</script>

</head>
<body>
	<div>
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
				User <security:authentication property="principal.username"/> <input type="submit" value="Logout"/>
		</form:form>
	</div>
	<br>
	<a href="${pageContext.request.contextPath}/">Voltar a pagina inicial</a>
	<br>
	<!--<c:out value="${pedidos}"/>-->
	 <table border="1">
	 	<tr>
          <th>Pedido Nº</th>
          <th>Tamanho</th>
          <th>Massa</th>
          <th>Borda</th>
          <th>Quant. sabores</th>
          <th>Sabor 1</th>
          <th>Sabor 2</th>
          <th>Sabor 3</th>
          <th>Adicional</th>
          <th>Personalização</th>
          <th>Bebida</th>
          <th>Endereço</th>
          <th>Preço</th>
          <th>Status</th>
        </tr>
        <c:forEach var="pedido" items="${pedidos}">
            <tr>
                <td><div id="theId${pedido.getId()}">${pedido.getId()}</div></td>
                <td>${pedido.getTamanho()}</td>
                <td>${pedido.getMassa()}</td>
                <td>${pedido.getBorda()}</td>
                <td>${pedido.getDividida()}</td>
                <td>${pedido.getSabor1()}</td>
                <td>${pedido.getSabor2()}</td>
                <td>${pedido.getSabor3()}</td>
                <td>${pedido.getAdicional()}</td>
                <td>${pedido.getPersonalizar()}</td>
                <td>${pedido.getBebida()}</td>
                <td>${pedido.getoEndereco()}</td>
                <td>${pedido.getPreco()}</td>
                <td>
                	 <select id="statusP${pedido.getId()}" onchange="changeStatus(statusP${pedido.getId()}.value, theId${pedido.getId()}.innerHTML)">
						  <option value="${pedido.getStatus()}">${pedido.getStatus()}</option>
						  <option value="Agendado">Agendado</option>
						  <option value="Em preparo">Em preparo</option>
						  <option value="Em transporte">Em transporte</option>
						  <option value="Entregue">Entregue</option>
					</select> 
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>