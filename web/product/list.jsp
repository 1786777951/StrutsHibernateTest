<%--
  Created by IntelliJ IDEA.
  User: Exception
  Date: 2019/12/2
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table align="center" border="1" cellpadding="0" width="500px">
        <tr>
            <td>id</td>
            <td>name</td>
            <td>price</td>
            <td>edit</td>
            <td>delete</td>
        </tr>

        <s:iterator value="products" var="p">
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td>${p.price}</td>
                <td><a href="editProduct?product.id=${p.id}">edit</a></td>
                <td><a href="deleteProduct?product.id=${p.id}">delete</a></td>
            </tr>
        </s:iterator>
    </table>

    <br>

    <form action="addProduct" method="post">
        <table align="center" border="1" cellpadding="0">
            <tr>
                <td>
                    name:
                </td>
                <td>
                    <input type="text" name="product.name" value=""/>
                </td>
            </tr>
            <tr>
                <td>
                    price:
                </td>
                <td>
                    <input type="text" name="product.price" value="0"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="增加">
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
