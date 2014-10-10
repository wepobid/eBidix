{include file='elements/header.tpl'}
	
	<div id="total-column">
		<div id="case">
			<div class="title">{$lang.My_account}</div>
		</div>
		<div id="user-menu">
			{include file='elements/user_menu.tpl'}
		</div>
		<div id="user-content">
			<div class="crumb">&raquo {$lang.User_menu.My_autobids}</div>
			
			<div class="items_list">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<th>{$lang.Auction_id}</th>
						<th>{$lang.Minimum_price}</th>
						<th>{$lang.Maximum_price}</th>
						<th>{$lang.Bids_allocated}</th>
						<th>{$lang.Bids_left}</th>
						<th>{$lang.Date}</th>
						<th>{$lang.Options}</th>
					</tr>
					{foreach from=$autobids item=autobid}
						<tr>
							<td><a href="/auctions/view/{$autobid.auction_id}">{$autobid.auction_id}</a></td>
							<td>{$autobid.minimum_price}</td>
							<td>{$autobid.maximum_price}</td>
							<td>{$autobid.total_bids}</td>
							<td>{$autobid.bids}</td>
							<td>{$autobid.date}</td>
							<td>{if $autobid.active == 1}<a href="/autobids/suspend/{$autobid.id}">{$lang.Suspend}</a>{else}<a href="/autobids/activate/{$autobid.id}">{$lang.Activate}</a>{/if} | <a href="/autobids/delete/{$autobid.id}">{$lang.Delete}</a></td>
						</tr>
					{/foreach}
				</table>
			</div>
		</div>
	</div>
	
</div>
{include file='elements/footer.tpl'}
