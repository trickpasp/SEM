package br.com.mestrep.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.sem.model.Cliente;
import br.ufc.mestrep.dao.ClienteDao;
import br.ufc.mestrep.dao.ClienteJpaDao;

public class VisualizarClienteLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		ClienteDao clienteDao = new ClienteJpaDao();
		List<Cliente> clientes = clienteDao.getLista();
		req.setAttribute("clientes", clientes);
		
		System.out.println("Visualizando clientes... ");
		
		return "/WEB-INF/jsp/crudclientesadmin.jsp";
	}

}
