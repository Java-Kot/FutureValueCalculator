<%--
  Created by IntelliJ IDEA.
  User: conifer
  Date: 19/10/2018
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Future Value Calculator</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
      <style>
          div{
              width: 30%;
              margin: auto;
          }
          h1{
              font-size: 3em;
              text-align: center;
          }
          input{
              margin-bottom: 15px;
          }
      </style>
  </head>
  <body>

  <%
      boolean quest = request.getParameter("inventment") != null && request.getParameter("rate") != null && request.getParameter("years") != null;
      if (quest) {
          double invent = Double.parseDouble(request.getParameter("inventment"));
          double rates = Double.parseDouble(request.getParameter("rate")) / 100;
          int years = Integer.parseInt(request.getParameter("years"));
          double interestrate = rates * invent;
          double inventment = invent + (invent * interestrate * years);
      }
  %>

  <div>
    <h1>Future Value Calculator</h1>
      <form class="form-group" action="index.jsp">
          <label for="inventment">Inventment Amount: </label>
          <input name="inventment" class="form-control" placeholder="10000000" type="number" size="30" />
          <label for="rate">Yearly Interest Rate: </label>
          <input name="rate" class="form-control" placeholder="2" type="number" size="2" />
          <label for="years">Number of Years: </label>
          <input name="years" class="form-control" placeholder="5" type="number" size="3" />
          <button type="submit" class="btn btn-primary">Calculate</button>
      </form>
      <%--<h1>About: <%= inventment %></h1>--%>
  </div>
  </body>
</html>
