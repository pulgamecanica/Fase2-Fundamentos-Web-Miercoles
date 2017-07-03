$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 
  $("h4").on("click", function(){
    event.preventDefault();
    alert("The paragraph was clicked.");
});


//    $('#forma').on("submit", function(event){
//     var url = '/urls';
//     var data_to_compare = $( this ).serialize();
//     $.post(url,data_to_compare, function( callback ) 
//       console.log( callback );
//     $( "p" ).html( callback );
  
// });    
// });
});






