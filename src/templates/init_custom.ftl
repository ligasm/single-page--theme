<#--
This file allows you to override and define new Velocity variables.
-->


<#assign mainMessage = theme_settings["main-message"] />

<#assign submessage = theme_settings["submessage"] />

<#assign findOutMoreLink = theme_settings["find-pot-more-link"] />

<#if getterUtil.getBoolean(theme_settings["header-dark"]!"", true)>
    <#assign headerDark = "text-color-dark"/>
<#else>
    <#assign headerDark = "text-color-light"/>
</#if>

<#if getterUtil.getBoolean(theme_settings["header-dark-btn"]!"", true) >
    <#assign headerDarkBtn = "btn-dark" />
<#else>
    <#assign headerDarkBtn = "btn-light" />
</#if>

<#assign testMsg = "test" />


