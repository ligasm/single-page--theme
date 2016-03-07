<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="icon-reorder"></i></a>
<nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="icon-remove"></i></a>
        <li class="sidebar-brand">
            <a href="#top"  onclick = $("#menu-close").click(); >${site_name}</a>

            <#if is_signed_in >
                <a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url!}" id="sign-in" rel="nofollow">${sign_in_text!}</a>
            <#else>
                <a data-redirect="${is_login_redirect_required?string}" href="${sign_out_url!}" id="sign-out" rel="nofollow">${sign_out_text!}</a>
            </#if>
        </li>
    </ul>
</nav>
