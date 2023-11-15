package com.example.algamoneyapi.repository.pessoa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import com.example.algamoneyapi.model.Pessoa;
import com.example.algamoneyapi.model.Pessoa_;

public class PessoaRepositoryImpl implements PessoaRepositoryQuery {
	
	@PersistenceContext
	private EntityManager manager;

	@Override
	public Page<Pessoa> filtrar(String nome, Pageable pageable) {
		CriteriaBuilder builder = manager.getCriteriaBuilder();
		CriteriaQuery<Pessoa> criteria = builder.createQuery(Pessoa.class);
		Root<Pessoa> root = criteria.from(Pessoa.class);
		
		if (nome != null) {
			Predicate predicate = criarRestricao(nome, builder, root);
			criteria.where(predicate);
		}
		
		TypedQuery<Pessoa> query = manager.createQuery(criteria);
		adicionarRestricoesDePaginacao(query, pageable);
		
		return new PageImpl<Pessoa>(query.getResultList(), pageable, total(nome));
	}
	
	private Predicate criarRestricao(String nome, CriteriaBuilder builder, Root<Pessoa> root) {
//		Predicate predicate = null;
//		if (nome.isEmpty() || nome == null) {
//			return predicate.;
//		}
		Predicate predicate = builder.like(builder.lower(root.get(Pessoa_.nome)), "%" + nome + "%");
		return predicate;
	}
	
	private void adicionarRestricoesDePaginacao(TypedQuery<Pessoa> query, Pageable pageable) {
		int paginaAtual = pageable.getPageNumber();
		int totalRegistroPorPagina = pageable.getPageSize();
		int primeiroRegistroDaPagina = paginaAtual * totalRegistroPorPagina;
		
		query.setFirstResult(primeiroRegistroDaPagina);
		query.setMaxResults(totalRegistroPorPagina);
	}
	
	private long total(String nome) {
		CriteriaBuilder builder = manager.getCriteriaBuilder();
		CriteriaQuery<Long> criteria = builder.createQuery(Long.class);
		Root<Pessoa> root = criteria.from(Pessoa.class);
		
		Predicate predicate = criarRestricao(nome, builder, root);
		criteria.where(predicate);
		
		criteria.select(builder.count(root));
		return manager.createQuery(criteria).getSingleResult();
	}

}
