package com.example.algamoneyapi.repository.pessoa;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.example.algamoneyapi.model.Pessoa;

public interface PessoaRepositoryQuery {
	
	public Page<Pessoa> filtrar(String nome, Pageable pageable);
	
}
