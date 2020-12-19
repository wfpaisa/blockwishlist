<script type="text/javascript">
console.log({$wishlist_products|json_encode nofilter});
var wishlistProductsIds = {$wishlist_products|json_encode nofilter};
var loggin_required 	= "{l s='You must be logged in to manage your wishlist.' mod='blockwishlist' js=1}";
var added_to_wishlist 	= "{l s='The product was successfully added to your wishlist.' mod='blockwishlist' js=1}";
var mywishlist_url		= "{url entity='module' name='blockwishlist' controller='mywishlist'}";
var baseDir				= "{$urls.base_url}";

{if $customer.is_logged}
	var isLoggedWishlist = true
{else}
	var isLoggedWishlist = false
{/if}	
</script>