<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<br>
	<br>
	<div class="container">
		<!--	...	panel	aqui	...	-->
		<br>
		<div class="row">
			<h1 class="pull-left">Clientes</h1>
			<div class="col-md-3 col-md-offset-3 pull-right">
				
				<button type="submit" class="btn btn-success btn-lg"  data-toggle="modal"
					data-target="#add1">Adicionar
					<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
				</button>
				<a class="btn btn-default btn-lg" href="mvc?logica=VisualizarClienteLogic"
					role="button">Atualizar</a>
					
				<!-- Modal adicionar-->
				<div class="modal fade" id="add1" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">Adicionar Cliente</h4>
							</div>
							<div class="modal-body">
								<form action="mvc?logica=AdicionarClienteLogic" class="form-horizontal" method="post">
									<div class="form-group">
										<label for="inputUser" class="col-sm-2 control-label">Usuário</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="inputUser"
												placeholder="usuário" name="user">
										</div>
									</div>
									<div class="form-group">
										<label for="inputName" class="col-sm-2 control-label">Nome
											Completo</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="inputName"
												placeholder="Nome completo..." name="name">
										</div>
									</div>
									<div class="form-group">
										<label for="inputDate" class="col-sm-2 control-label">Data
											de Nascimento</label>
										<div class="col-sm-10">
											<input type="date" class="form-control" id="inputDate"
												placeholder="endereço.." name="data">
										</div>
									</div>
									<div class="form-group">
										<label for="inputFone" class="col-sm-2 control-label">Telefone</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="inputFone"
												placeholder="endereço.." name="fone">
										</div>
									</div>									
									<div class="form-group">
										<label for="inputAdress" class="col-sm-2 control-label">Endereço</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="inputAdress"
												placeholder="endereço.." name="adress">
										</div>
									</div>
									
									<div class="form-group">
										<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
										<div class="col-sm-10">
											<input type="email" class="form-control" id="inputEmail3"
												placeholder="Email" name="email">
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">Senha</label>
										<div class="col-sm-10">
											<input type="password" class="form-control"
												id="inputPassword3" placeholder="Password" name="password">
										</div>
									</div>
									
									<div class="modal-footer">
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
												<button type="submit" class="btn btn-default">Cadastrar</button>
											</div>
										</div>
									</div>

									
								</form>
							</div>
							
						</div>
					</div>
				</div>

			</div>
		</div>
		
		<br>
		
		<div class="row">
			<table class="table table-bordered ls-tabl">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nome</th>
						<th>Telefone</th>
						<th>Opcções</th>
					</tr>
				</thead>
				<tbody id="resultado">
					<c:forEach items="${clientes}" var="cli">
						<tr>
							<td>${cli.id}</td>
							<td>${cli.nome}</td>
							<td>${cli.telefone}</td>
							<td>
								<button type="button" class="btn btn-warning"
									data-toggle="modal" data-target="#alt${cli.id}">
									<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
								</button>
								<a class="btn btn-danger" href="mvc?logica=RemoveClienteLogic&id=${cli.id}" role="button">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>		
													
								
								
								<!-- Modal adicionar-->
								<div class="modal fade" id="alt${cli.id}" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">Alterar Produto</h4>
											</div>
											<div class="modal-body">
												<form  class="form-horizontal" class="" method="post">
													<div class="form-group">
														<label for="inputUser" class="col-sm-2 control-label">Usuário</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" id="inputUser"
																placeholder="usuário" value="${cli.nick}" name="user">
														</div>
													</div>
													<div class="form-group">
														<label for="inputName" class="col-sm-2 control-label">Nome
															Completo</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" id="inputName"
																placeholder="Nome completo..." value="${cli.nome}" name="name">
														</div>
													</div>
													<div class="form-group">
														<label for="inputAdress" class="col-sm-2 control-label">Endereço</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" id="inputAdress"
																placeholder="endereço.." value="${cli.endereco}" name="adress">
														</div>
													</div>
													<div class="form-group">
														<label for="inputDate" class="col-sm-2 control-label">Data
															de Nascimento</label>
														<div class="col-sm-10">
															<input type="date" class="form-control" id="inputDate"
																placeholder="" value="${cli.dataNascimento}" name="data">
														</div>
													</div>
													<div class="form-group">
														<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
														<div class="col-sm-10">
															<input type="email" class="form-control" id="inputEmail3"
																placeholder="Email" value="${cli.email}" name="email">
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-offset-2 col-sm-10">
															<button type="submit" class="btn btn-default">Alterar</button>
														</div>
													</div>
												</form>
											</div>
											<div class="modal-footer"></div>
										</div>
									</div>
								</div></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
	

	<c:import url="rodape.jsp" />

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>