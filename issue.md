HttpServletRequest#getUserPrincipal() returns null after HttpServletRequest#login()

My test codes on GitHub.




LoginServlet

```java
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            request.login(username, password);
            request.getSession(true);
            response.sendRedirect("./ProtectedServlet");
            return;
        } catch (ServletException e) {
            request.getRequestDispatcher("/WEB-INF/login_error.jsp")
                    .forward(request, response);
            return;
        }
    }
}
```

In login.html, I input valid username and password ("adminA" and "password").