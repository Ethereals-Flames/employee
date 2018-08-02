$(function(){
	$(".row1").click(function(){
		$($(this).children(".list_item_form")).submit();
	});
	$("#newEmployee").click(function(){
		$('<form action="new" method="get"></form>').appendTo('body').submit();
	});
	$("#empDelete").click(function(){
		$('<form action="delete/'+$(this).attr("name")+'" method="get"></form>').appendTo('body').submit();
	});
	$("#empUpdate").click(function(){
		$('<form action="update/'+$(this).attr("name")+'" method="get"></form>').appendTo('body').submit();
	});
	
})