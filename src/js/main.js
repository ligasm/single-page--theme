(function(){
	$("#content section.portlet").each(function(index,obj){
		var item = $(obj);

		var a = $('<a>')
			.attr('href','#'+item.attr('id'))
			.click(function(){$("#menu-close").click()})
			.text(item.find('.portlet-title-text').text());

		console.log(a);
		var li = $('<li>').append(a);
		$("#sidebar-wrapper ul").append(li);
	});
})();