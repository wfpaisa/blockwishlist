{if $products}
	<dl class="products">
		{foreach from=$products item=product name=i}

			<dt class="{if $smarty.foreach.i.first}first_item{elseif $smarty.foreach.i.last}last_item{else}item{/if}">
				<span class="quantity-formated">
					<span class="quantity">{$product.quantity|intval}</span>x
				</span>
				<a href="{url entity=product id=$product.id_product ipa=$product.id_product_attribute}" title="{$product.name|escape:'html':'UTF-8'}">
					{$product.name|escape:'html':'UTF-8'}
				</a>
				<a class="ajax_cart_block_remove_link" href="javascript:;" onclick="javascript:WishlistCart('wishlist_block_list', 'delete', '{$product.id_product}', {$product.id_product_attribute}, '0');" rel="nofollow" title="{l s='remove this product from my wishlist' mod='blockwishlist'}">
					({l s='Remove' mod='blockwishlist'})
				</a>
			</dt>
			{if isset($product.attributes_small)}
			<dd class="{if $smarty.foreach.i.first}first_item{elseif $smarty.foreach.i.last}last_item{else}item{/if}">
				<a href="{url entity=product id=$product.id_product ipa=$product.id_product_attribute}" title="{l s='Product detail' mod='blockwishlist'}">
					{$product.attributes_small|escape:'html':'UTF-8'}
				</a>
			</dd>
			{/if}
		{/foreach}
	</dl>
{else}
	<dl class="products no-products">
		{if isset($error) && $error}
			<dt>{l s='You must create a wishlist before adding products' mod='blockwishlist'}</dt>
		{else}
			<dt>{l s='No products' mod='blockwishlist'}</dt>
		{/if}
	</dl>
{/if}
