package fr.bufalo.acme.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.bufalo.acme.dao.PostalCodeDaoImpl;

/**
 * @date Created 15/05/2021
 * @author Frederic Thebault
 * @version v1.0
 *
 */
@Service(value = "postalCodeManager")
public class PostalCodeManager {

	@Autowired
	private PostalCodeDaoImpl pcdi;
	
}
