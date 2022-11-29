<%@page import="org.w3c.dom.Document"%>
<%@page import="javax.swing.text.Document"%>
<%@page import="java.util.Random"%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
int ans=0;
	int randomno=5;
	Random rn=new Random();
	randomno=rn.nextInt(100);
	

function Validateuserno(int userno)
{
   
	int userNo=Document.getElementById(userno);
	if(userNo==randomno)
	{
		ans=1;
	}

    
}

%>
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>guessing jsp</title>
<link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



        <style>
            #myNumber{
                font-size:100px;
                text-align:center;
                margin:50px auto;
                font-family:Arial, sans-serif;
                border:2px black solid;
            }
        </style>

</head>
<body >   

	

	<div >
	        <div class="livesRemaining">
        </div>
		<form class="container"  onclick="Validateuserno(Document.getElementById('userno'))">
			<h3>I am thinking a numbet between 1-100</h3>
			<div id="myNumber"><%=randomno %></div>
			<h3>Can you guess it?</h3>
			<input type="text" placeholder="Guess Number" name="userno" id="userno"  required> <br>
			
			<button style="margin-top:5px">Guess</button>
			
			
			<%
			if(ans){ 
			%>
					<h1 style="red">ans matched</h1>
					
					
			<%
			 }
			%>
				
			
		</form>
	</div>
</body>
</html>