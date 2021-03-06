 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div>
  <h1>신청내역</h1>
  <table class="table">
  <thead>
    <tr>
      <th scope="col">신청번호</th>
      <th scope="col">코치님</th>
      <th scope="col">신청한 프로그램명</th>
      <th scope="col">결제금액</th>
      <th scope="col">상태</th>
    </tr>
  </thead>
  <c:forEach items="${programList}" var="list">
  <tbody>
    <tr>
      <th scope="row">${list.mcp.no}</th>
      <td>${list.coach.name}</td>
      <td>${list.name}</td>
      <td>${list.fee}</td>     
 <c:set var="status" value="${list.mcp.status}" />
  <c:choose>
    <c:when test="${status eq '결제대기중'}">
    <td>
    <button type="button" onclick="location.href='orderForm?no=${list.mcp.no}'">결제하기</button>
    </td>
  </c:when>
  <c:when test="${status eq '요청거절됨'}">
    <td>
    <input type="button" value="거절사유" onclick="showPopup();" />
    </td>
    </c:when>
  <c:otherwise>
    <td>${list.mcp.status}</td>
  </c:otherwise>
  </c:choose>
    </tr>
  </tbody>
  </c:forEach>
</table>
</div>


 <script language="javascript">
  function showPopup() { window.open("popup.jsp", "거절사유", "width=400, height=300, left=100, top=50"); }
 </script>
