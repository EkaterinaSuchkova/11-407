<#-- @ftlvariable name="goods" type="java.util.List<com.springapp.mvc.common.GoodInfo>" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Catalog</title>
    <script src="http://code.jquery.com/jquery-1.11.0.js"></script>
    <link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
    <script src="/resources/js/bootstrap.js" defer ></script>
</head>
<body>
<#include "header.ftl">
    Page = ${page}
    Limit = ${limit!"null"}

    <#list goods as good>
        <#if !limit?? || good_index < limit>
        <pre>
        ${good_index})
            ID: ${good.id}
            Название товара: ${good.name}
            ID категории: ${good.categoryId}
            цена: ${good.price?number}
        </pre>
        <a href="/cart/add/${good.id}" >Купить</a>
        </#if>
    </#list>
</body>
</html>