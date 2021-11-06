const nestedQuery = '.nested-sortable';
const identifier = 'sortableId';

const root = document.getElementById('items');
let URL = "http://localhost:8080/LTW_NEWS/admin/";



/**************************************************
 * @author Phong
 * @return lay thu tu cua cac menu va tra ve mang JSON
 **************************************************/
function serialize(sortable) 
{
	  var serialized = [];
	  var children = [].slice.call(sortable.children);
	  for (var i in children) {
	    var nested = children[i].querySelector(nestedQuery);
	    serialized.push({
	      id: children[i].dataset[identifier],
	      children: nested ? serialize(nested) : []
	    });
	  }
	  return serialized
}



/**************************************************
 * @author Phong
 * @return gui du lieu va hien thong bao da luu lai thu tu menu thanh cong
 **************************************************/
let saveMenuOrder = ()=>{
	$("#btn-save-menu-order").unbind("click").on("click", function(){
		let order = serialize(root);
		
		console.log("clicked button");
		/*console.log(order);
		console.log("type: " + typeof(order) );*/
		
		
		$.ajax({
			url: `${URL}save-menu-order.htm`,
			type: "POST",
			data: { "order": JSON.stringify(order), "id": "test thử xem có nhận không" },
			success: function(data)
			{
					console.log( data);
					if( data == "success")
					{
						Swal.fire(
			                'Hoàn tất!',
			                'Thao tác thành công',
			                'success'
			              );
					}
					/*IN THONG BAO NEU THAT BAI */
					else
					{
						Swal.fire(
					      'Thất bại !',
					      'Thao tác xảy ra sự cố',
					      'error'
					    );
					}
				
			}
		})
	})
}

var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return typeof sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
    return false;
};

let addMenu = ()=>{
	$(".btn-add-menu").unbind("click").on("click", function(){
		
		let title = $("#title").val();
		let url = $("#url").val();
		let position;
		
		if( getUrlParameter('position') == false )
		{
			position = 0;	
		}
		else
		{
			position = 1;
		}
		
		
		if( !title || !url || !position )
		{
			Swal.fire('Thất bại !','Thao tác xảy ra sự cố','error');
			return;
		}
		
		$.ajax({
			url: `${URL}/add-menu.htm`,
			type: "post",
			data: { title , url, position},
			success: function(data)
			{
				if( data == "success")
				{
					Swal.fire(
		                'Hoàn tất!',
		                'Thao tác thành công',
		                'success'
		              );
				}
				/*IN THONG BAO NEU THAT BAI */
				else
				{
					Swal.fire(
				      'Thất bại !',
				      'Thao tác xảy ra sự cố',
				      'error'
				    );
				}
			}
		});
	});

}



$(document).ready(function(){
	saveMenuOrder();
	
	addMenu();
});