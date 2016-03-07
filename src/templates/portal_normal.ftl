<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class} mt" id="main-surface">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
    <#if has_navigation && is_setup_complete>
        <#include "${full_templates_path}/navigation.ftl" />
    </#if>

    <header id="top" class="header">
        <div class="text-vertical-center">
            <div class="${headerDark}">
                <h1>${mainMessage}</h1>
                <h3>${submessage}</h3>
            </div>
            <br/>
            <a href="${findOutMoreLink}" class="btn ${headerDarkBtn}  btn-lg">Find Out More</a>
        </div>
    </header>

    <div id="content" class="text-center">
        <#if selectable>
                <@liferay_util["include"] page=content_include />
            <#else>
        ${portletDisplay.recycle()}

        ${portletDisplay.setTitle(the_title)}

            <@liferay_theme["wrap-portlet"] page="portlet.ftl">
                <@liferay_util["include"] page=content_include />
            </@>
        </#if>
    </div>


    <!-- Footer -->
    <footer id="footer" role="contentinfo">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <hr>
                    <p class="powered-by text-muted">
                        <@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>
</div>
<script type="text/javascript">
    <#if site_logo??>
        $("#top").css("background-image", "url('${site_logo}')");
    </#if>

    $("#menu-close").click(function (e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Opens the sidebar menu
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Scrolls to the selected menu item on the page
    $(function () {
        $('#wrapper  a[href*=#]:not([href=#])').click(function () {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
</script>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>