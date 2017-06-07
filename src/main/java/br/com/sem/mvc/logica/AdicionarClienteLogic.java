package br.com.sem.mvc.logica;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.mestrep.dao.ClienteDao;
import br.com.mestrep.dao.ClienteJpaDao;
import br.com.sem.model.Cliente;

public class AdicionarClienteLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String nick = req.getParameter("user");
		String name = req.getParameter("name");
		String adress = req.getParameter("adress");	
		String fone = req.getParameter("fone");
		Date dataNascimento = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("data"));
		String email = req.getParameter("email");
		String password = String.valueOf(req.getParameter("password"));
		Cliente cliente= new Cliente();
		cliente.setNick(nick);
		cliente.setNome(name);		
		cliente.setDataNascimento(dataNascimento);
		cliente.setTelefone(fone);
		cliente.setEndereco(adress);
		cliente.setEmail(email);
		cliente.setSenha(password);
		
		ClienteDao dao = new ClienteJpaDao();
		dao.adiciona(cliente);
		System.out.println("Adicionando cliente... ");
		
		return "/WEB-INF/jsp/crudclientesadmin.jsp";
	}

}
