{assign var=_expand_id value=10|mt_rand:100000}
{if $customer.is_logged}
    <div class="wishlists_product_block">
        <p class="hidden">
            <input type="hidden" name="id_product_attribute" id="idCombination_{$_expand_id}" value="0"/>
        </p>
        {if $productInWishlist[1] == false && $id_product_home}
            <a class="wishlist_button_nopop" href="#" onclick="WishlistCart('wishlist_block_list', 'add', '{$id_product_home|intval}', $('#idCombination').val(), 1); return false;" rel="nofollow"  title="{l s='Add to my wishlist' mod='blockwishlist'}">
                <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 490.4 490.4" viewBox="0 0 490.4 490.4" height="20px" width="20px">
                    <path d="m222.5 453.7c6.1 6.1 14.3 9.5 22.9 9.5 8.5 0 16.9-3.5 22.9-9.5l179.7-179.7c27.3-27.3 42.3-63.6 42.4-102.1 0-38.6-15-74.9-42.3-102.2s-63.5-42.3-102.1-42.3c-37.9 0-73.6 14.5-100.7 40.9-27.2-26.5-63-41.1-101-41.1-38.5 0-74.7 15-102 42.2-27.3 27.3-42.3 63.6-42.3 102.2 0 38.5 15.1 74.8 42.4 102.1zm-162.8-366.9c22.6-22.6 52.7-35.1 84.7-35.1s62.2 12.5 84.9 35.2l7.4 7.4c2.3 2.3 5.4 3.6 8.7 3.6 3.2 0 6.4-1.3 8.7-3.6l7.2-7.2c22.7-22.7 52.8-35.2 84.9-35.2 32 0 62.1 12.5 84.7 35.1 22.7 22.7 35.1 52.8 35.1 84.8s-12.5 62.1-35.2 84.8l-179.8 179.8c-2.9 2.9-8.2 2.9-11.2 0l-180-180c-22.7-22.7-35.2-52.8-35.2-84.8s12.5-62.1 35.1-84.8z"/>
                </svg>
            </a>
        {elseif $productInWishlist[1] == true && $id_product_home}
            <a class="wishlist_button_nopop" href="#" onclick="WishlistCart('wishlist_block_list', 'delete', '{$id_product_home|intval}', $('#idCombination').val(), 1); return false;" rel="nofollow"  title="{l s='Remove to my wishlist' mod='blockwishlist'}">
                <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 490.4 490.4" viewBox="0 0 490.4 490.4" height="20px" width="20px" fill="#DF4949">
                    <path class="st0" d="M222.5,453.7c6.1,6.1,14.3,9.5,22.9,9.5c8.5,0,16.9-3.5,22.9-9.5L448,274c27.3-27.3,42.3-63.6,42.4-102.1
                        c0-38.6-15-74.9-42.3-102.2S384.6,27.4,346,27.4c-37.9,0-73.6,14.5-100.7,40.9c-27.2-26.5-63-41.1-101-41.1
                        c-38.5,0-74.7,15-102,42.2C15,96.7,0,133,0,171.6c0,38.5,15.1,74.8,42.4,102.1L222.5,453.7z M59.7,86.8
                        c22.6-22.6,52.7-35.1,84.7-35.1s62.2,12.5,84.9,35.2l7.4,7.4c2.3,2.3,5.4,3.6,8.7,3.6c3.2,0,6.4-1.3,8.7-3.6l7.2-7.2
                        c22.7-22.7,52.8-35.2,84.9-35.2c32,0,62.1,12.5,84.7,35.1c22.7,22.7,35.1,52.8,35.1,84.8s-12.5,62.1-35.2,84.8L251,436.4
                        c-2.9,2.9-8.2,2.9-11.2,0l-180-180c-22.7-22.7-35.2-52.8-35.2-84.8S37.1,109.5,59.7,86.8L59.7,86.8z"/>
                    <circle class="st0" cx="139.4" cy="169.2" r="128.9"/>
                    <circle class="st0" cx="342.5" cy="174.5" r="128.9"/>
                    <rect x="135.2" y="185.6" transform="matrix(0.7071 0.7071 -0.7071 0.7071 279.3714 -87.3036)" class="st0" width="219.8" height="216"/>
                </svg>
            </a>
        {elseif $productInWishlist[0] == false && $id_product}
            <a class="wishlist_button_nopop" href="#" onclick="WishlistCart('wishlist_block_list', 'add', '{$id_product|intval}', $('#idCombination').val(), 1); return false;" rel="nofollow"  title="{l s='Add to my wishlist' mod='blockwishlist'}">
                <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 490.4 490.4" viewBox="0 0 490.4 490.4" height="20px" width="20px">
                    <path d="m222.5 453.7c6.1 6.1 14.3 9.5 22.9 9.5 8.5 0 16.9-3.5 22.9-9.5l179.7-179.7c27.3-27.3 42.3-63.6 42.4-102.1 0-38.6-15-74.9-42.3-102.2s-63.5-42.3-102.1-42.3c-37.9 0-73.6 14.5-100.7 40.9-27.2-26.5-63-41.1-101-41.1-38.5 0-74.7 15-102 42.2-27.3 27.3-42.3 63.6-42.3 102.2 0 38.5 15.1 74.8 42.4 102.1zm-162.8-366.9c22.6-22.6 52.7-35.1 84.7-35.1s62.2 12.5 84.9 35.2l7.4 7.4c2.3 2.3 5.4 3.6 8.7 3.6 3.2 0 6.4-1.3 8.7-3.6l7.2-7.2c22.7-22.7 52.8-35.2 84.9-35.2 32 0 62.1 12.5 84.7 35.1 22.7 22.7 35.1 52.8 35.1 84.8s-12.5 62.1-35.2 84.8l-179.8 179.8c-2.9 2.9-8.2 2.9-11.2 0l-180-180c-22.7-22.7-35.2-52.8-35.2-84.8s12.5-62.1 35.1-84.8z"/>
                </svg>
            </a>
        {elseif $productInWishlist[0] == true && $id_product}
            <a class="wishlist_button_nopop" href="#" onclick="WishlistCart('wishlist_block_list', 'delete', '{$id_product|intval}', $('#idCombination').val(), 1); return false;" rel="nofollow"  title="{l s='Remove to my wishlist' mod='blockwishlist'}">
                <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 490.4 490.4" viewBox="0 0 490.4 490.4" height="20px" width="20px" fill="#DF4949">
                    <path class="st0" d="M222.5,453.7c6.1,6.1,14.3,9.5,22.9,9.5c8.5,0,16.9-3.5,22.9-9.5L448,274c27.3-27.3,42.3-63.6,42.4-102.1
                        c0-38.6-15-74.9-42.3-102.2S384.6,27.4,346,27.4c-37.9,0-73.6,14.5-100.7,40.9c-27.2-26.5-63-41.1-101-41.1
                        c-38.5,0-74.7,15-102,42.2C15,96.7,0,133,0,171.6c0,38.5,15.1,74.8,42.4,102.1L222.5,453.7z M59.7,86.8
                        c22.6-22.6,52.7-35.1,84.7-35.1s62.2,12.5,84.9,35.2l7.4,7.4c2.3,2.3,5.4,3.6,8.7,3.6c3.2,0,6.4-1.3,8.7-3.6l7.2-7.2
                        c22.7-22.7,52.8-35.2,84.9-35.2c32,0,62.1,12.5,84.7,35.1c22.7,22.7,35.1,52.8,35.1,84.8s-12.5,62.1-35.2,84.8L251,436.4
                        c-2.9,2.9-8.2,2.9-11.2,0l-180-180c-22.7-22.7-35.2-52.8-35.2-84.8S37.1,109.5,59.7,86.8L59.7,86.8z"/>
                    <circle class="st0" cx="139.4" cy="169.2" r="128.9"/>
                    <circle class="st0" cx="342.5" cy="174.5" r="128.9"/>
                    <rect x="135.2" y="185.6" transform="matrix(0.7071 0.7071 -0.7071 0.7071 279.3714 -87.3036)" class="st0" width="219.8" height="216"/>
                </svg>
            </a>
        {/if}
    </div>
{else}
    <a class="wishlist_button_nopop" href="{$urls.pages.authentication}">
        <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 490.4 490.4" viewBox="0 0 490.4 490.4" height="20px" width="20px">
            <path d="m222.5 453.7c6.1 6.1 14.3 9.5 22.9 9.5 8.5 0 16.9-3.5 22.9-9.5l179.7-179.7c27.3-27.3 42.3-63.6 42.4-102.1 0-38.6-15-74.9-42.3-102.2s-63.5-42.3-102.1-42.3c-37.9 0-73.6 14.5-100.7 40.9-27.2-26.5-63-41.1-101-41.1-38.5 0-74.7 15-102 42.2-27.3 27.3-42.3 63.6-42.3 102.2 0 38.5 15.1 74.8 42.4 102.1zm-162.8-366.9c22.6-22.6 52.7-35.1 84.7-35.1s62.2 12.5 84.9 35.2l7.4 7.4c2.3 2.3 5.4 3.6 8.7 3.6 3.2 0 6.4-1.3 8.7-3.6l7.2-7.2c22.7-22.7 52.8-35.2 84.9-35.2 32 0 62.1 12.5 84.7 35.1 22.7 22.7 35.1 52.8 35.1 84.8s-12.5 62.1-35.2 84.8l-179.8 179.8c-2.9 2.9-8.2 2.9-11.2 0l-180-180c-22.7-22.7-35.2-52.8-35.2-84.8s12.5-62.1 35.1-84.8z"/>
        </svg>
    </a>
{/if}