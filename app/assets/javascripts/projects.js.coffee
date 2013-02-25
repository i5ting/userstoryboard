# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	//
	$('.project_item').click ()->
		id = $(this).attr('id')
		window.location.href='/projects/'+ id
	
	
	$( "#accordion" ).accordion({
	      heightStyle: "content"
    });
	
	$("button").button().click (e) ->
		e.preventDefault();
		
		$( "#dialog-form" ).dialog( "open" );
		
		# $( "#dialog-modal" ).dialog({
		# 	      height: 140,
		# 	      modal: true
		# 	    });
	
	
	
	
	
	ok = 
      text: "OK",
      click : ()->alert 1
	
	cancel= 
      text: "cancel",
      click : ()->$( this ).dialog( "close" );
	     
		
	$( "#dialog-form" ).dialog({
		autoOpen: false,
		height: 500,
		width:  550,
		modal:  true,
		buttons:[
			ok,cancel
		]
		
    });
	
	 
		
		
