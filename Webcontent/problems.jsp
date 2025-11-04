<%@ page session="true" %>
<%
  String username = (String) session.getAttribute("username");
  if (username == null) {
      response.sendRedirect("login.jsp");
      return;
  }
%>
<html>
<head>
  <title>Problems</title>
  <link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container" style="margin-top:24px">
    <div style="display:flex; justify-content:space-between; align-items:center; margin-bottom:14px">
      <h2>Problems</h2>
      <div class="small muted">Hello, <%= username %></div>
    </div>

    <div class="panel" style="margin-bottom:16px; display:flex; gap:12px; align-items:center;">
      <div>
        <select id="filterDifficulty" class="btn">
          <option value="">All difficulties</option>
          <option value="Easy">Easy</option>
          <option value="Medium">Medium</option>
          <option value="Hard">Hard</option>
        </select>
      </div>
      <div>
        <select id="filterStatus" class="btn">
          <option value="">All</option>
          <option value="done">Done</option>
          <option value="todo">To do</option>
        </select>
      </div>
      <div style="flex:1">
        <input id="searchBox" placeholder="Search by title" style="width:100%; padding:8px; border-radius:6px; border:1px solid #2a2a2a; background:#0f0f0f; color:var(--text)">
      </div>
      <div>
        <button id="applyBtn" class="btn">Apply</button>
      </div>
    </div>

    <div id="problemsList"></div>
  </div>

  <script src="lib/jquery.min.js"></script>
  <script src="js/problems.js"></script>
</body>
</html>
