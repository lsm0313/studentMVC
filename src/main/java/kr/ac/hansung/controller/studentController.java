package kr.ac.hansung.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.ac.hansung.model.Student;
import kr.ac.hansung.service.StudentService;

@Controller
public class studentController {
	private StudentService studentservice;

	public StudentService getStudentservice() {
		return studentservice;
	}

	@Autowired
	public void setStudentservice(StudentService studentservice) {
		this.studentservice = studentservice;
	}

	@RequestMapping("/semester")
	public String showSemester(Model model) {
		List<Student> student = studentservice.getCurrent();

		model.addAttribute("student", student);
		return "semester";
	}

	@RequestMapping("/division")
	public String showDivision(Model model) {
		List<Student> student = studentservice.getCurrent();

		model.addAttribute("student", student);
		return "division";
	}

	
	
	@RequestMapping("objcet")
	public String showObject(Model model) {
		List<Student> student = studentservice.getCurrent();

		model.addAttribute("student", student);
		return "object";
	}
	
	
	@RequestMapping("/course")
	public String showCourse(Model model) {

		return "course";
	}
	
	@RequestMapping("/docreate")
	public String doCreate(Model model, Student student){
		studentservice.insert(student);
		return "studentcreated";
	}
	
	@RequestMapping("/coursechk")
	public String showCoursechk(Model model) {
		List<Student> student = studentservice.getCurrent();

		model.addAttribute("student", student);
		return "coursechk";
	}
}
