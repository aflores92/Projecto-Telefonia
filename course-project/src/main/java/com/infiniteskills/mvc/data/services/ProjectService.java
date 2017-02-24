package com.infiniteskills.mvc.data.services;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import com.infiniteskills.mvc.data.entities.Project;
import com.infiniteskills.mvc.data.entities.Sponsor;

public class ProjectService {

	private List<Project> projects = new LinkedList<>();

	public ProjectService() {
		Project javaProject = this.createProject(1L, "Prueba1",
				"Esto es una Prueba", new Sponsor("Prueba2, Prueba 3", "Prueba4",
						"Prueba 5"));
		Project javascriptProject = this.createProject(2L,
				"Prueba6", "Prueba 7",
				new Sponsor("Pruba 8", "Prueba 9", "Prueba 10"));
		Project htmlProject = this.createProject(3L, "Prueba 1",
				"Prueba 2", new Sponsor("Prueba 3",
						"Prueba 4", "Prueba 5"));

		this.projects.addAll(Arrays.asList(new Project[] { javaProject,
				javascriptProject, htmlProject }));
	}

	public List<Project> findAll() {
		return this.projects;
	}

	public Project find(Long projectId) {
		return this.projects.stream().filter(p -> {
			return p.getProjectId().equals(projectId);
		}).collect(Collectors.toList()).get(0);
	}
	
	public void save(Project project){
		this.projects.add(project);
	}

	private Project createProject(Long projectId, String title,
			String description, Sponsor sponsor) {
		Project project = new Project();
		project.setName(title);
		project.setAuthorizedFunds(new BigDecimal("100000"));
		project.setAuthorizedHours(new BigDecimal("1000"));
		project.setProjectId(projectId);
		project.setSpecial(false);
		project.setType("multi");
		project.setYear("2015");
		project.setDescription(description);
		project.setSponsor(sponsor);
		return project;
	}
	

}
