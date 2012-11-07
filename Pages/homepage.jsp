<html>
<head>
	<title>Home Page</title>
	<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%

if(session.getAttribute("logon.isDone")!=null && session.getAttribute("logon.isDone")!=""){
out.println("welcome:"+session.getAttribute("logon.isDone"));
%>

<h3>File Upload:</h3>
Select a file to upload: <br />
<form action="PicUpload" method="post"
                        enctype="multipart/form-data">
<input type="file" name="file" size="50" />
<br />
<input type="submit" value="Upload File" />
</form>
<form action="PicGrid" method="post">
<input type="submit" value="View Photos" />
</form>
<form action="logout.jsp" method="post">
<input type="submit" value="Log out" />
</form>

<%} %>
</body>
</html>
