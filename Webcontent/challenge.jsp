<%@ page session="true" %>
<%
  String username = (String) session.getAttribute("username");
  if (username == null) {
      response.sendRedirect("login.jsp");
      return;
  }
%>
<html>
<head><title>Evala — Challenge</title></head>
<body>
  <h3>Welcome, <%= username %></h3>
  <p>This is the placeholder challenge page. Replace with your editor + UI later.</p>
</body>
</html>
