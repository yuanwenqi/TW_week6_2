<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

    <style type="text/css">
       table.dataintable {
         margin-top:15px;
         border-collapse:collapse;
         border:1px solid #aaa;
         width:50%;
       }
       table.dataintable th {
         vertical-align:baseline;
         padding:5px 15px 5px 6px;
         background-color:#3F3F3F;
         border:1px solid #3F3F3F;
         text-align:left;
         color:#fff;
       }
       table.dataintable td {
         vertical-align:text-top;
         padding:6px 15px 6px 6px;
         border:1px solid #aaa;
       }
       table.dataintable tr:nth-child(odd) {
         background-color:#F5F5F5;
       }
       table.dataintable tr:nth-child(even) {
         background-color:#fff;
       }

    </style>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
</head>
<body>

<div class="row margin-top-20">
    <table class ="dataintable" border="1">
        <thead>
            <tr>
                <th>编号</th>
                <th>姓名</th>
                <th>年龄</th>
                <th>性别</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items = "${employees}" var = "item">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.age}</td>
                <td>${item.gender}</td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</div>



</body>
</html>
