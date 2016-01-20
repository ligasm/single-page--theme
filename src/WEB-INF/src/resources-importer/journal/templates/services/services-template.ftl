<style type="text/css">
    .services {
        padding: 50px 0;
    }

    .service-item {
        margin-bottom: 30px;
    }
</style>

<#assign col = Columns.getData()?number>

<div class="services bg-primary">
    <div class="container  ">
        <div class="text-center">
            <div class="col-lg-10 col-lg-offset-1">
                <h2>${ServicesTitle.getData()}</h2>
                <hr class="small">
            <#if Service.getSiblings()?has_content>
                <div class="row">
                    <#list Service.getSiblings() as item>
                        <div class="col-md-${12/col} col-sm-${(12/col) * 2}">
                            <div class="service-item">
                                <span class="icon-stack icon-4x">
                                    <i class="icon-circle icon-2x"></i>
                                    <i class="${item.Icon.getData()} text-primary"></i>
                                </span>
                                <h4>
                                    <strong>${item.Name.getData()}</strong>
                                </h4>
                                <p>${item.Description.getData()}</p>
                                <a href="${item.Link.getData()}" class="btn btn-light">Learn More</a>
                            </div>
                        </div>
                    </#list>
                </div>
            </#if>
            </div>
        </div>
    </div>
</div>