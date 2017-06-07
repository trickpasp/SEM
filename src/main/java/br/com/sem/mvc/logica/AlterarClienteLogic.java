package br.com.sem.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.mestrep.dao.ClienteDao;
import br.com.mestrep.dao.ClienteJpaDao;
import br.com.sem.model.Cliente;

public class AlterarClienteLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Integer id = Integer.parseInt(req.getParameter("id"));
		Cliente cliente= new Cliente();
		cliente.setId(id);
		ClienteDao dao = new ClienteJpaDao();
		dao.remove(cliente);
		System.out.println("Alterando contato... ");
		
		return "/WEB-INF/jsp/crudclientesadmin.jsp";
	}

}
