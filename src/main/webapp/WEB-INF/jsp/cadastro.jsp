<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<c:import url="cabecalho.jsp" />
	
	<form class="form-horizontal">
		<div class="form-group">
			<label for="inputUser" class="col-sm-2 control-label">Usuário</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputUser"
					placeholder="usuário">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">Nome Completo</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputName"
					placeholder="Nome completo...">
			</div>
		</div>
		<div class="form-group">
			<label for="inputAdress" class="col-sm-2 control-label">Endereço</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputAdress"
					placeholder="endereço..">
			</div>
		</div>
		<div class="form-group">
			<label for="inputDate" class="col-sm-2 control-label">Data de Nascimento</label>
			<div class="col-sm-10">
				<input type="date" class="form-control" id="inputDate"
					placeholder="endereço..">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="inputEmail3"
					placeholder="Email">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label">Senha</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="inputPassword3"
					placeholder="Password">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Sign in</button>
			</div>
		</div>
	</form>
<c:import url="rodape.jsp" />
</body>
</html>