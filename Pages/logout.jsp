<html>
	<head><title>Logout</title></head>

<%@page import="java.util.*" %>

<%session.invalidate();%>
You have logged out. Please
<a href="/hrispiro"><b>Login</b></a>
</html>
