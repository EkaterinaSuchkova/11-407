<!DOCTYPE html>
<html>
<head>
    <script src="http://code.jquery.com/jquery-1.11.0.js"></script>
    <link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
    <script src="/resources/js/bootstrap.js" defer ></script>
</head>

<body>
<#include "header.ftl">
<h1>Корзинка</h1>
<#list (Session.sessionCart![]) as good>
    <#if !limit?? || good_index < limit >
    <pre>
        ${good_index})
            ID: ${good.id}
            Название товара: ${good.name}
            ID категории: ${good.categoryId}
            цена: ${good.price?number}
        </pre>
    <#else >
    Корзина пустая
    </#if>
</#list>
</body>
</html>