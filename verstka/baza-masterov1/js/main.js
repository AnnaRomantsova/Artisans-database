$(document).ready(function(){
	
	$('.transform-check').iCheck({ checkboxClass: 'icheckbox_minimal' });
	
	//$(".transform-select").coreUISelect();
	
	//$("#list-special").jScrollPane();
	
	$("#toggle-menu").on("click", function(){
		
		$("#h-user-menu").toggleClass("open");
		
		return false;
		
	});
	
	$("#toggle-city").on("click", function(){
		
		$("#city-list").toggleClass("open");
		
		return false;
		
	});
	
	$(".part-list > li > a").on("click", function(){
		
		$(this).parent().toggleClass("open");
		
		return false;
		
	});
	
	$(".portfolio-photo-more").on("click", function(){
		
		$(".more-photo").slideToggle(200);
		$(".more-photo").toggleClass("open");
		
		return false;
		
	}); 
	
	$(".portfolio-photo-more").toggle(
		function () {
			$(this).text("Свернуть все");

		},

		function () {
			$(this).text("Развернуть все");
		}
	);
	
	$("#open-list-special").on("click", function(){
		
		$(".list-special-wr").toggleClass("open");
		
		return false;
		
	}); 

	$("#open-list-special").toggle(
		function () {
			$(this).text("Свернуть");

		},

		function () {
			$(this).text("Выбрать");
		}
	);
	
	$("#link-enter").on("click", function(){
		
		$("#block-enter").addClass("open");
		$(".cover-block").addClass("open");
		
		return false;
		
	});
	
	$("#link-registration").on("click", function(){
		
		$("#block-registration").addClass("open");
		$(".cover-block").addClass("open");
		
		return false;
		
	});
	
	/* 
	
	$('#link-registration').click(function() {
		$('#block-registration').reveal({
			animation: 'fadeAndPop', 
			animationspeed: 300,   
			closeonbackgroundclick: true,   
			dismissmodalclass: 'close-reveal-modal' 
		});
	}); */
	
	$(".in-popap, .cover-block").on("click", function(){
		
		$(".popap-wr").removeClass("open");
		$(".cover-block").removeClass("open");
		
		return false;
		
	});
	
	$(".other-city").jScrollPane({
		'mouseWheelSpeed':'20', 
		'stickToBottom':'true',
		'verticalDragMaxHeight':'40'
	});

});