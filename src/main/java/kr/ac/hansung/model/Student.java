package kr.ac.hansung.model;

public class Student {

	
	private String year;
	private String semester;
	private String curriculum;
	private String subject;
	private String divide;
	private int credit;
	
	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getCurriculum() {
		return curriculum;
	}

	public void setCurriculum(String curriculum) {
		this.curriculum = curriculum;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDivide() {
		return divide;
	}

	public void setDivide(String divide) {
		this.divide = divide;
	}

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public Student(){
		
	}
	
	public Student(String year, String semester, String curriculum, String subject, String divide,int credit) {
		this.year = year;
		this.semester = semester;
		this.curriculum = curriculum;
		this.subject = subject;
		this.divide = divide;
		this.credit = credit;
	}
	
	public String toString() {
		return "[수강년도 "+ year +" " + semester+ "학기] " + " [과목코드 : " + curriculum + "] [과목 명 : " + subject + "] [이수 구분 : " + divide + "] [학점 : " + credit + "]";
	}
	
}
