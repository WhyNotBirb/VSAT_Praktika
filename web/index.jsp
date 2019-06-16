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
    <script src="<c:url value="js/sorttable.js"/>"></script>
<%--    <script src="js/sorttable.js"></script>--%>
  </head>
  <body>

<c:out value="${test}"/>

<div class="grid-container">
    <div class="grid-item-1">
  <form action="">
        <label for="year">Metai</label>
          <input type="radio" id="year" name="timeInterval" >
         <label for="quarter">Ketvirtis</label>
            <input type="radio" id="quarter" name="timeInterval">
         <label for="month">Menuo</label>
             <input type="radio" id="month" name="timeInterval">
        <label for="week">Savaite</label>
                <input type="radio" id="week" name="timeInterval">
              <label for="day">Diena</label>
                 <input type="radio" id="day" name="timeInterval">
      <br>
                 <input type="radio" id="other" name="timeInterval">
         <label for="other">Kita</label>
         <label for="from">nuo</label>
                 <input type="Date" id="from">
         <label for="to">iki</label>
                 <input type="Date" id="to">
  </form>
    </div>
<div class="grid-2">


                        <input type="number" class="filter1">


    <select class="filter2"></select>

                        <input type="text" class="filter3">

                        <input type="text" class="filter4">

                        <select class="filter5">

                        <input type="date" class="filter6">

                        <input type="button" class="filter7">



                       <table class="sortable">
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
                         </thead>
                         <tbody class="container">
                         <div class="scroll">
                          <c:forEach var="row" items="${rows}">
                              <tr>
                              <c:forEach var="col" items="${row}">
                                  <td>
                                  ${col}
                                  </td>
                              </c:forEach>
                              </tr>
                          </c:forEach>
                         </div>
                         </tbody>
                       </table>

                </div>

</div>
<div>
  <input type="button" value="PDF">
  <input type="button" value="XSL">
  <input type="button" value="Word">
</div>



  </body>
</html>
