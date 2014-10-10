{include file='header.tpl'}
	
	<div id="left-column">
		<div class="breadcrumb"><a href="/">{$lang.Home}</a> > {$lang.Reset_password_title}</div>
		<div class="content">
			<p>{$lang.Password_reset_text}</p>
			<p>
				<form method="POST" action="/user/reset">
					<ul>
						<li><input type="email" name="email" placeholder="{$lang.Email}" required autofocus></li>
						<li><input type="submit" class="button green" name="submit" value="{$lang.Submit}"></li>
					</ul>
				</form>
			</p>
		</div>
	</div>
	
	<div id="right-column">
		{include file='right_column.tpl'}
	</div>
	
</div>
{include file='footer.tpl'}
