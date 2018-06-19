
<div id="wishlists_product_block">
	
	<p class="hidden">
		<input type="hidden" name="id_product_attribute" id="idCombination" value="{$product.id_product_attribute|intval}"/>
	</p>

	{if $wishlists|count == 1}
		<a id="wishlist_button_nopop"  class="btn btn-primary" href="#" onclick="WishlistCart('wishlist_block_list', 'add', '{$id_product|intval}', $('#idCombination').val(), document.getElementById('quantity_wanted').value); return false;" rel="nofollow"  title="{l s='Add to my wishlist' mod='blockwishlist'}">
			<i class="material-icons">playlist_add</i> {l s='Add to wishlist' mod='blockwishlist'}
		</a>
	{else}
		
		{foreach name=wl from=$wishlists item=wishlist}
			
			{if $smarty.foreach.wl.first}
				
				<a id="wishlist_button" class="btn btn-primary" tabindex="0" data-toggle="popover" data-trigger="focus" title="{l s='Add to:' mod='blockwishlist'}" data-placement="bottom">
					<i class="material-icons">playlist_add</i> {l s='Add to wishlist' mod='blockwishlist'}
				</a>

				<div hidden id="popover-content">
					<ul class="wishlist-list-add">
			{/if}

						<li title="{$wishlist.name|escape:'html':'UTF-8'}" value="{$wishlist.id_wishlist}" onclick="WishlistCart('wishlist_block_list', 'add', '{$id_product|intval}', $('#idCombination').val(), document.getElementById('quantity_wanted').value, '{$wishlist.id_wishlist}');">
							<i class="material-icons">add</i> {$wishlist.name}
						</li>

			{if $smarty.foreach.wl.last}
					</ul>
				</div>
			{/if}

		{foreachelse}

			<a href="#" id="wishlist_button_nopop"  class="btn btn-primary" onclick="WishlistCart('wishlist_block_list', 'add', '{$id_product|intval}', $('#idCombination').val(), document.getElementById('quantity_wanted').value); return false;" rel="nofollow"  title="{l s='Add to my wishlist' mod='blockwishlist'}">
				<i class="material-icons">playlist_add</i> {l s='Add to wishlist' mod='blockwishlist'}
			</a>
		{/foreach}
	{/if}
</div>
