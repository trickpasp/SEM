package br.ufc.quixada.dao;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.sem.model.Cliente;


public class ClienteJpaDao implements ClienteDao {

	private EntityManager em;
	
	public ClienteJpaDao() {
		this.em = PersistenceManager.getEntityManager();
	}

	public ClienteJpaDao(EntityManager em) {
		setEntityManager(em);
	}
	
	public void setEntityManager(EntityManager em) {
		this.em = em;
	}

	public EntityManager getEntityManager() {
		return em;
	}

	@Override
	public void adiciona(Cliente cliente) {
		em.persist(cliente);
	}

	@Override
	public List<Cliente> getLista() {
		List<Cliente> result = em.createQuery("from clientes", Cliente.class).getResultList();
		return result;
	}
	
	@Override
	public void altera(Cliente cliente) {
		em.merge(cliente);
	}
	
	@Override
	public void remove(Cliente cliente) {
		em.remove(em.merge(cliente));
	}

	@Override
	public void close() {
		if (em != null && em.isOpen()) {
			em.close();
		}
	}

}
