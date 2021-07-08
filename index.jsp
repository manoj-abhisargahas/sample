<%@page import="java.util.Calendar" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	String wish_msg = "";
	String pad(int num) {
		return (num <= 9)?("0"+String.valueOf(num)):(String.valueOf(num));
	}
	String now_TIME() {
		Calendar calendar = Calendar.getInstance();
		int now_H = calendar.get(Calendar.HOUR);
		int now_M = calendar.get(Calendar.MINUTE);
		int now_S = calendar.get(Calendar.SECOND);
		int now_AM_PM = calendar.get(Calendar.AM_PM);
		
		return pad(now_H)+":"+pad(now_M)+":"+pad(now_S)+" "+(now_AM_PM==1?"PM":"AM");
	}
%>
<%
	Calendar calendar = Calendar.getInstance();
	int now_H = calendar.get(Calendar.HOUR_OF_DAY);
	if(now_H < 12){
		wish_msg = "Good Morinng!";
	}
	else if(now_H < 17){
		wish_msg = "Good AfterNoon!";
	}
	else if(now_H < 20){
		wish_msg = "Good Evening!";
	}
	else {
		wish_msg = "Good Night!";
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<title>Web Log</title>
	</head>
	<body>
		<div>
			<%="<h1>"+wish_msg+"</h1>"%>
			<%="You opened webpage at: "+now_TIME() %>
		</div>
	</body>
</html>