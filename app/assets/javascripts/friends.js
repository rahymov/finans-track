$(document).ready(function(){
	$('#friend-lookup-form').on('ajax:complete', funtion(event, data, status){
		$('#results').html(data.responseText)
	})
})