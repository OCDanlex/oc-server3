{***************************************************************************
 *  You can find the license in the docs directory
 *
 *  Unicode Reminder メモ
 ***************************************************************************}
 {* OCSTYLE *}

<div class="content2-pagetitle">
	<img src="resource2/{$opt.template.style}/images/misc/32x32-ignore.png" style="align: left; margin-right: 10px;" width="32" height="32" />
	{t}Ignored Geocaches{/t}
</div>

<table class="null" border="0" cellspacing="0" width="98%">
	<tr>
		<td colspan="2">
			<table class="table">
				<tr class="searchresult">
					<th width="50px">{t}Type{/t}</td>
					<th width="50px">{t}State{/t}</td>
					<th width="630px" colspan="2">{t}Name{/t}</td>
				</tr>
				{foreach from=$ignores item=ignoreItem}
					{cycle values="listcolor1,listcolor2" assign=listcolor}
					<tr>
						<td class="{$listcolor}">{include file="res_cacheicon_22.tpl" cachetype=$ignoreItem.type|escape}</th>
						<td class="{$listcolor}">{include file="res_cachestatus.tpl" status=$ignoreItem.status}</th>
						<td class="{$listcolor}"><span style="{include file="res_cachestatus_span.tpl" status=$ignoreItem.status}"><a href="viewcache.php?wp={$ignoreItem.wp}">{$ignoreItem.name|escape}</a></span></th>
						<td class="{$listcolor}">[<a href="javascript:if(confirm('{t escape=js}Do you really want to delete this entry?{/t}'))location.href='ignore.php?cacheid={$ignoreItem.cacheid}&action=removeignore'">{t}remove{/t}</a>]</th>
					</tr>
				{foreachelse}
					<tr><td colspan="4"><br />{t}You do not ignore any geocaches now.{/t}</td></tr>
				{/foreach}
			</table>
		</td>
	</tr>
</table>
