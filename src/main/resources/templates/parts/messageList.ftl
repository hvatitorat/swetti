<#include "security.ftl">
<#import "pager.ftl" as p>

<@p.pager page url />

    <div class="card-columns" id="message-list">
        <#list page.content as message>
                <div class="card my-3" data-id="${message.id}">
                    <#if message.filename??>
                        <img src="/img/${message.filename}" class="card-img-top" />
                        </#if>
                        <div class="m-2">
                            <span>${message.text}</span><br/>
                            <i>#${message.tag}</i>
                        </div>
                        <div class="card-footer text-muted container">
                            <div class="row">
                                <a href="/user-messages/${message.author.id}" class="btn btn-outline-warning">${message.authorName}</a>
                                <#if message.author.id == currentUserId>
                                <a class="btn btn-outline-warning" href="/user-messages/${message.author.id}?message=${message.id}">
                                    Edit
                                </a>
                            </#if>
                    </div>
                </div>
            </div>
        <#else>
            No message
        </#list>
    </div>

<@p.pager page url />