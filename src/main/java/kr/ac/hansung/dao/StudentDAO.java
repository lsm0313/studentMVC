package kr.ac.hansung.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Student;

@Repository
public class StudentDAO {
	private JdbcTemplate jdbcTemplateObject;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}
	
	public int getRowCount(){
		String sqlStatement = "select count(*) from offers";
		return jdbcTemplateObject.queryForObject(sqlStatement, Integer.class);
	}
	//single object
	public Student getStudnet(String year){
		String sqlStatement = "select * from student where year=?";
		
		return jdbcTemplateObject.queryForObject(sqlStatement, new Object[]{year},new StudentMapper());
	}
	//multiple object
	public java.util.List<Student> getStudent(){
		String sqlStatement = "select * from student";

		return jdbcTemplateObject.query(sqlStatement, new StudentMapper());
	}
	
	public boolean insert(Student student){
		
		String year = student.getYear();
		String semester = student.getSemester();
		String curriculum = student.getCurriculum();
		String subject = student.getSubject();
		String divide = student.getDivide();
		int credit = student.getCredit();
		
		String sqlstatement = "insert into student (year, semester, curriculum, subject, divide, credit) values (?,?,?,?,?,?)";
		return (jdbcTemplateObject.update(sqlstatement, new Object[]{2017, 1, curriculum, subject, divide, credit}) == 1);
	}

}
