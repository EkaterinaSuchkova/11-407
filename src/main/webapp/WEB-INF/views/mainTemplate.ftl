<#macro mainTemplate title="" styles=[] scripts=[] >
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <#list styles as css>
        <link rel="stylesheet" href="/resources/${css}" type="text/css" />
    </#list>
    <script src="http://code.jquery.com/jquery-1.10.0.js"></script>
    <#list scripts as js>
        <script src="/resources/${js}" type="text/javascript" defer></script>
    </#list>
</head>
<body>
<#include "header.ftl">
<@m_body/>
</body>
</html>
</#macro>