package dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import lombok.Data;

@Entity
@Data
public class Student {
	@Id
	@GeneratedValue(generator = "regno")
	@SequenceGenerator(initialValue = 121001, allocationSize = 1, name = "regno", sequenceName = "regno")
	int regno;
	String name;
	@Column(nullable = false, unique = true)
	String email;
	@Column(nullable = false, unique = true)
	long mobile;
	String password;
	int standard;
	@Lob
	byte[] picture;
	
	@OneToMany
	MarksCard card;
	
}
