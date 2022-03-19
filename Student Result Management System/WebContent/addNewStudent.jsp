<%@page import="Project.ConnectionProvider"  %>
<%@page import="java.sql.*"  %>
<% 
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String rollNo=request.getParameter("rollNo");
String name=request.getParameter("name");
String fatherName=request.getParameter("fatherName");
String gender=request.getParameter("gender");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into student values(?,?,?,?,?,?)");
	 ps.setString(1, course);
	 ps.setString(2, branch);
	 ps.setString(3, rollNo);
	 ps.setString(4, name);
	 ps.setString(5, fatherName);
	 ps.setString(6, gender);
	ps.executeUpdate();
	response.sendRedirect("adminHome.jsp");
}catch(Exception e){
	out.println(e);
}
%>