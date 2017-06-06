package br.ufc.quixada.dao;

import java.util.List;

import br.com.sem.model.Cliente;


public interface ClienteDao {

	public void adiciona(Cliente contato);

	public List<Cliente> getLista();

	public void altera(Cliente contato);

	public void remove(Cliente contato);

	public void close();
}