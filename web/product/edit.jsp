<%--
  Created by IntelliJ IDEA.
  User: Exception
  Date: 2019/12/2
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>修改</title>
</head>
<body>
    <form action="updateProduct" method="post">
        <table align="center" border="1" cellpadding="0">
            <tr>
                <td>
                    name:
                </td>
                <td>
                    <input type="text" name="product.name" value="${product.name}">
                </td>
            </tr>
            <tr>
                <td>
                    price:
                </td>
                <td>
                    <input type="text" name="product.price" value="${product.price}">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="hidden" name="product.id" value="${product.id}">
                    <input type="submit" value="修改">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
