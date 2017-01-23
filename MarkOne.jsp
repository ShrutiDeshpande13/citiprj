<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="ISO-8859-1">
        <div ng-controller="controller"></div>
        <meta charset="utf-8">
        <title>Risk Based Trade Recommendation System</title>
        <style type="text/css">
            body {
                background-color: #ADD8E6;
                background : (mark2.jpeg) return 0 0;
                color: #5a5656;
                font-family: 'Open Sans', Arial, Helvetica, sans-serif;
                font-size: 16px;
                line-height: 1.5em;
            }
            a { text-decoration: none; }
            h1 { font-size: 1em; }
            h1, p {
                margin-bottom: 10px;
            }
            strong {
                font-weight: bold;
            }
            .uppercase { text-transform: uppercase; }

            /* ---------- LOGIN ---------- */
            #login {
                margin: 50px auto;
                width: 300px;
            }
            form fieldset input[type="text"], input[type="password"] {
                background-color: #e5e5e5;
                border: none;
                border-radius: 3px;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                color: #5a5656;
                font-family: 'Open Sans', Arial, Helvetica, sans-serif;
                font-size: 14px;
                height: 50px;
                outline: none;
                padding: 0px 10px;
                width: 280px;
                -webkit-appearance:none;
            }
            form fieldset input[type="submit"] {
                background-color: #008dde;
                border: none;
                border-radius: 3px;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                color: #f4f4f4;
                cursor: pointer;
                font-family: 'Open Sans', Arial, Helvetica, sans-serif;
                height: 50px;
                text-transform: uppercase;
                width: 300px;
                -webkit-appearance:none;
            }
            form fieldset a {
                color: #5a5656;
                font-size: 10px;
            }
            form fieldset a:hover { text-decoration: underline; }
        </style>

</head>
<div id="login">
		<font color="Black">
        <h4><strong>Welcome to</strong></h4>
        <h2><strong>Risk Based Trade Recommendation System </strong></h2>
       	</font>
        <h1>Please login</h1>
        <form action="Controller" method="POST">
            <fieldset>
                <p><input type="text" name="user" required value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' " ></p>
                <p><input type="password" name="pass" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p>
                <p><input type="submit" value="Login" style="font-size:7pt;color:white;background-color:cornflowerblue;border:2px solid #190b66;padding:3px" ></p>
            </fieldset>
        </form>
    </div>
    <%@page import="com.te.prj.*" %>
	<%
		DownloadData d=new DownloadData();
		d.datadownload();
	%>
    
</div>
 <body>
 <body background="2016-25-12--16-33-42.jpeg">

</body>
</html>
