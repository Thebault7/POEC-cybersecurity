package fr.bufalo.acme.bo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * @date Created 22/05/2021
 * @author Linh Chi Nguyen
 * @version v1.0
 *
 */

// TODO ajouter la taille des données + nullable pour chaque attribut
// TODO gérer les contructeurs
@Data
@NoArgsConstructor
@Entity
@Table(name = "status")
public class Status implements Serializable {

    /**
     *
     */

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NonNull
    @Column(name = "label", nullable = false, length = 50)
    private String label;

    @OneToMany(mappedBy = "status")
    private List<Product> products;

}