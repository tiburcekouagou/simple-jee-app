<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employees list</title>
</head>
<body>
	<h2>Employee List</h2>

	<%@ page
		import="java.util.*,bj.highfive.usermanagement.dao.*,bj.highfive.usermanagement.bean.*"%>

	<%
	String spageid = request.getParameter("page");
	int pageid = Integer.parseInt(spageid);
	int total = 5;
	if (pageid == 1) {
	} else {
		pageid = pageid - 1;
		pageid = pageid * total + 1;
	}

	List<Employee> list = EmployeeDAO.getRecords(pageid, total);

	out.println("<h3>Page No: " + spageid + "</h3>");
	out.println("<table border='1' cellpadding='4' width='60%'>");
	out.println("<tr> <th>Id</th> <th>Name</th> <th>Salary</th> </tr>");
	for (Employee e : list) {
		out.println("<tr><td>" + e.getId() + "</td> <td>" + e.getName() + "</td> <td>" + e.getSalary() + " </td> </tr>");
	}
		out.println("</table>");
	%>
	<a href="view.jsp?page=1">1</a>
	<a href="view.jsp?page=2">2</a>
	<a href="view.jsp?page=3">3</a>
</body>
</html>