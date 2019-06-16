<%--
  Created by IntelliJ IDEA.
  User: Domas
  Date: 2019-05-28
  Time: 03:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
  <head>
    <title>$Title$</title>
    <link href="<c:url value="res/style.css" />" rel="stylesheet" type="text/css">

  </head>
  <body>

<c:out value="${test}"/>

<div class="conatiner">
  <form action="">
    <input type="radio" value="year" name="timeInterval">Metai
    <input type="radio" value="quarter" name="timeInterval">Ketvirtis
    <input type="radio" value="month" name="timeInterval">Menuo
    <input type="radio" value="week" name="timeInterval">Savaite
    <input type="radio" value="day" name="timeInterval">Diena
      <br>
    <input type="radio" value="other" name="timeInterval">Kita
    <label>nuo</label>
    <input type="Date">
    <label>iki</label>
    <input type="Date">
  </form>
  <div class="list">

   <table>
     <thead>
      <tr>
        <th>
          Id
        </th>
        <th>
          Užduoties tipas
        </th>
        <th>
          Iniciatorius
        </th>
        <th>
          Atsakingas asmuo
        </th>
        <th>
          Statusas
        </th>
        <th>
          Paskutinis pakeitimas
        </th>
        <th>
          Failas
        </th>
      </tr>
     <tr>
       <th>
         <input type="text">
       </th>
       <th>
         <input type="text">
       </th>
       <th>
         <input type="text">
       </th>
       <th>
         <input type="text">
       </th>
       <th>
         <input type="text">
       </th>
       <th>
         <input type="text">
       </th>
       <th>
         <input type="text">
       </th>
     </tr>
     </thead>
     <tbody>


      <c:forEach var="row" items="${rows}">



          <tr>

          <c:forEach var="col" items="${row}">
              <td>
              ${col}
              </td>

          </c:forEach>

          </tr>

      </c:forEach>
     </tbody>
   </table>


  </div>
<div>
  <input type="button">PDF
  <input type="button">XSL
  <input type="button">Word
</div>
</div>


  </body>
</html>
