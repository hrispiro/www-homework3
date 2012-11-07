<HTML>
<head>
<title>Picture Edit</title>
</head>
<%

if(session.getAttribute("logon.isDone")!=null && session.getAttribute("logon.isDone")!=""){

%>
<body onload="xmlmeta()">
<script>

if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
	xmlhttp.open("GET","<%= request.getParameter("xmlname") %>.xml",false);
	xmlhttp.send();
	xmlDoc=xmlhttp.responseXML; 

	x=xmlDoc.getElementsByTagName("PICTURE");
	i=0;

function xmlmeta()
{

document.getElementById("description1").innerHTML=(x[i].getElementsByTagName("DESCRIPTION")[0].childNodes[0].nodeValue);
document.getElementById("comment").value=(x[i].getElementsByTagName("COMMENT")[0].childNodes[0].nodeValue);
document.getElementById("height").value=(x[i].getElementsByTagName("HEIGHT")[0].childNodes[0].nodeValue);
document.getElementById("width").value=(x[i].getElementsByTagName("WIDTH")[0].childNodes[0].nodeValue);
document.getElementById("description").value =(x[i].getElementsByTagName("DESCRIPTION")[0].childNodes[0].nodeValue);
var img=document.images
    img[0].width=(x[i].getElementsByTagName("WIDTH")[0].childNodes[0].nodeValue);
    img[0].height=(x[i].getElementsByTagName("HEIGHT")[0].childNodes[0].nodeValue);
var deg = (x[i].getElementsByTagName("ROTATE")[0].childNodes[0].nodeValue);
document.getElementById("images").style.MozTransform = "rotate(" + deg + "deg)"; 
document.getElementById("txtDeg").value =deg;
}
/**
function Rotate(){
	var deg = document.getElementById('txtDeg').value;
	document.getElementById("images").style.MozTransform = "rotate(" + deg + "deg)"; 
}**/

</script>
<style>
form{position:relative;}
body {text-align:center;background-color: #ffe4b5 ;}
textarea{text-align:center;}
</style>
</BODY>
<div id=images>
<img src="Pictures/<%= request.getParameter("PictureName") %>" /> 
</div>
<div>
<b>Description:</b> <span id="description1"></span><br>
</div>

<form action="xmlEdit" method="post">
<textarea readonly="readonly" name="filename" ><%= request.getParameter("PictureName") %></textarea>
<br />Photo Description: <br />
<textarea rows="2" cols="50" name="description" id="description" required="required"></textarea><br />
Photo Comment: <br />
<textarea rows="2" cols="50" name="comment" id="comment" required="required"></textarea><br />
Photo Height: <br />
<textarea rows="1" cols="10" name="height" id="height" required="required"></textarea><br />
Photo Width: <br />
<textarea rows="1" cols="10" name="width" id="width" required="required"></textarea><br />
Rotate: <br />
<textarea rows="1" cols="10" name="txtDeg" id="txtDeg" required="required"></textarea><br />
<input type="submit" value="Submit" />
</form>
 <h3>Don't forget to refresh sometimes!!</h3>
<%} %>
</HTML>


