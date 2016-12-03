package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.StudentDAO;
import kr.ac.hansung.model.Student;

@Service
public class StudentService {
	private StudentDAO studentDao;
	
	@Autowired
	public void setStudentDao(StudentDAO studentDao) {
		this.studentDao = studentDao;
	}
	
	public List<Student> getCurrent(){
		return studentDao.getStudent();
	}
	
	public void insert(Student student){
		studentDao.insert(student);
	}
	
}
