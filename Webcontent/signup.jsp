<%@ page session="true" contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Evala — Sign Up</title>
  <link rel="stylesheet" href="css/main.css">
  <meta name="viewport" content="width=device-width,initial-scale=1">
</head>
<body>
  <div class="auth-wrapper">
    <div class="auth-card panel">
      <h2 class="auth-title">Create Account</h2>
      <p class="auth-sub muted">Join Evala and start coding challenges</p>

      <form action="register" method="post" class="auth-form">
        <div class="input-group">
          <input type="text" name="username" placeholder="Username" required>
        </div>
        <div class="input-group">
          <input type="email" name="email" placeholder="Email" required>
        </div>
        <div class="input-group">
          <input type="password" name="password" placeholder="Password" required>
        </div>
        <button class="btn primary large" type="submit">Sign Up</button>
      </form>

      <div class="auth-feedback">
        <div style="color:red;">${requestScope.error}</div>
        <div style="color:green;">${requestScope.message}</div>
      </div>

      <p class="auth-link small">
        Already have an account? 
        <a href="login.jsp" style="color:var(--accent);">Login</a>
      </p>
    </div>
  </div>
</body>
</html>
