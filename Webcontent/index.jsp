<%@ page session="true" contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Evala — Code, Run, Win</title>
  <link rel="stylesheet" href="css/main.css">
  <meta name="viewport" content="width=device-width,initial-scale=1">
</head>
<body>
  <header class="header">
  <div class="brand">Evala</div>
  <nav>
    <% String uname = (String) session.getAttribute("username"); %>
    <% if(uname != null) { %>
      <span class="small">Hello, <%= uname %></span>
      <form action="logout" method="post" style="display:inline"><button class="btn">Logout</button></form>
    <% } else { %>
      <a class="nav-link" href="signup.jsp">SignUp</a>
      <a class="nav-link" href="login.jsp">Login</a>
    <% } %>
  </nav>
</header>


  <main class="container hero">
    <div class="hero-left panel">
      <h1>Timed coding challenges — simple, fast, fair.</h1>
      <p class="muted">Solve a single verified problem with a live timer. Run code, submit, and get instant verdicts — built with Java Servlets, JSP & MySQL.</p>
      <div style="margin-top:18px">
        <a href="login.jsp" class="btn primary large">Get Started</a>
        <!-- <a href="challenge.jsp" class="btn" style="margin-left:10px">Try demo</a> -->
      </div>
      <ul class="features">
        <li>One-question sessions — focused practice</li>
        <li>Code editor with autosave</li>
        <li>Fast test-case judging</li>
      </ul>
    </div>

    <!-- <div class="hero-right panel">
      <div class="mock-viewport">
        <div class="mock-header">Problem • 10:00</div>
        <div class="mock-editor">public class Main { ... }</div>
      </div>
      <div class="small muted" style="margin-top:8px">Preview of the challenge UI</div>
    </div> -->
  </main>

  <footer class="container" style="margin-top:30px; text-align:center;">
    <div class="small muted">Evala — built by the team Technologia. <a href="https://github.com/akash-kumar5/Evala" style="color:var(--accent)">GitHub</a></div>
  </footer>
</body>
</html>
