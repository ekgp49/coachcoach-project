<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"  %>

<jsp:include page='../../header.jsp'/>
    
<h3>TODOLIST</h3>
<form action='add' method='post'>
<input name ='memberNo' value='${member.no}' type='hidden'>

메모: <input name='memo' type='text'><br>
날짜: <input name='createDate' value='${today}'><br>

<button>저장</button>
</form>


<jsp:include page='../../footer.jsp'/>