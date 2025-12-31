<%@ page session="true" %>
<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head><title>Dashboard</title></head>
<body>
<h2>Welcome, <%= user %></h2>

<h3>Add New Customer</h3>
<form action="customer" method="post">
    First Name: <input type="text" name="first_name" /><br />
    Last Name: <input type="text" name="last_name" /><br />
    NIC: <input type="text" name="nic" /><br />
    DOB: <input type="date" name="dob" /><br />
    Address: <input type="text" name="address" /><br />
    Mobile: <input type="text" name="mobile" /><br />
    Email: <input type="email" name="email" /><br />
    <input type="submit" value="Add Customer" />
</form>

<% if (request.getParameter("msg") != null) { %>
    <p style="color: green;"><%= request.getParameter("msg") %></p>
<% } %>

</body>
</html>
