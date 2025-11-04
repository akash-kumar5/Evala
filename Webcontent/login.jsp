<%@ page session="true" contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Evala — Login</title>
  <link rel="stylesheet" href="css/main.css">
  <meta name="viewport" content="width=device-width,initial-scale=1">
</head>
<body>
  <div class="auth-wrapper">
    <div class="auth-card panel">
      <h2 class="auth-title">Welcome back</h2>
      <p class="auth-sub muted">Log in to continue your coding journey</p>

      <form action="login" method="post" class="auth-form">
        <div class="input-group">
          <input type="email" name="email" placeholder="Email" required>
        </div>
        <div class="input-group">
          <input type="password" name="password" placeholder="Password" required>
        </div>
        <button class="btn primary large" type="submit">Login</button>
      </form>

      <div class="auth-feedback">
        <div style="color:red;">${requestScope.error}</div>
        <div style="color:green;">${requestScope.message}</div>
      </div>

      <p class="auth-link small">
        Don’t have an account?
        <a href="signup.jsp" style="color:var(--accent);">Sign up</a>
      </p>
    </div>
  </div>
</body>
</html>
