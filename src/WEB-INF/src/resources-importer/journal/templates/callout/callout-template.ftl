<style type="text/css">
    .callout {
        display: table;
        width: 100%;
        height: ${Height.getData()}px;
        color: ${Colour.getData()};
    <#if BackgroundImage.getData()?? && BackgroundImage.getData() != "">
        background: url(${BackgroundImage.getData()}) no-repeat center center scroll;
    </#if>
        -webkit-background-size: cover;
        -moz-background-size: cover;
        background-size: cover;
        -o-background-size: cover;
    }
</style>


<aside class="callout">
    <div class="text-vertical-center">
        <h1>${Title.getData()}</h1>
    <#if Subtitle??>
        <h3>${Subtitle.getData()}</h3>
    </#if>
    </div>
</aside>