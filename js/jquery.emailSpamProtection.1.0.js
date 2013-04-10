/* 
 * EmailSpamProtection (jQuery Plugin)
 * Version: 1.0
 * Date: 2010 July
 * Author: Mike Unckel
 * Description and Demo: http://unckel.de/labs/jquery-plugin-email-spam-protection
 *
 * HTML: <span class="email">info [dot] something [at] domain.com</span>
 * JavaScript: $("body").emailSpamProtection("email");
 *
 * 21-11-2012: Added [dot] replacement - by David Serrano (http://nng.is-a-geek.net)
 */

(function($) {
	$.fn.emailSpamProtection = function(className) {
		return $(this).find("." + className).each(function() {
			var $this = $(this);
			var s = ($this.text().replace(" [at] ", "&#64;")).split(" [dot] ").join(".");
			$this.html("<a href=\"mailto:" + s + "\">" + s + "</a>");
		});
	};
})(jQuery);
