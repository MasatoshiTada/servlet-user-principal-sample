<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Protected page</title>
</head>
<body>
    This is protected page.<br>
    Welcome, ${pageContext.request.userPrincipal.name}
    <form action="./LogoutServlet" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>