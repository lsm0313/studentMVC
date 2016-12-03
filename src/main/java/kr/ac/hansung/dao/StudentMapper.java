package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import kr.ac.hansung.model.Student;

public class StudentMapper implements RowMapper<Student>{

	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		Student student = new Student();
		student.setYear(rs.getString("year"));
		student.setSemester(rs.getString("semester"));
		student.setCurriculum(rs.getString("curriculum"));
		student.setSubject(rs.getString("subject"));
		student.setDivide(rs.getString("divide"));
		student.setCredit(rs.getInt("credit"));
		return student;
	}
	
}
