{foreach from=$allArticles item=articles}
<div id="omhoog">
    <h1 id="title">{$articles.title}</h1>
    <img  src="images/{$articles.image_name}" alt="" height="250" id="images">
    <h3 id="article">{$articles.description}</h3>

</div>
    {/foreach}

