{foreach from=$allAbouts item=abouts}
    <ul id="about">
        <li><h1 id="title">{$abouts.title}</h1></li>
    <li> <img  src="images/{$abouts.image_name}" alt="" height="250" id="images"></li>
    <li>  <h3 id="article">{$abouts.description}</h3></li>

    </ul>
{/foreach}
