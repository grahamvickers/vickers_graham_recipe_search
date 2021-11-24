(function() {
	"use strict";
	
	let searchRequest;
	let recipeRequest;
	const searchField=document.querySelector("#searchbox");

	function createRequest(){
		let request;
		if(window.XMLHttpRequest) {
			request = new XMLHttpRequest();
		}else if (request===null) {
			console.log("This is an outdated browser")
		}
		return request;
	}

	function showResults(e){
		//console.log(e.currentTarget.value);
		let str = e.currentTarget.value;
		searchRequest = createRequest();

		let url="searchrecipe.php?searchstring="+str;
		searchRequest.onreadystatechange = searchStatus;
		searchRequest.open("GET", url);
		searchRequest.send(null);
	}

	function searchStatus() {
		//console.log("search status");
		if(searchRequest.readyState===4 && searchRequest.status ===200) {
			// console.log(searchRequest.responseText);
			document.querySelector("#txtHint").innerHTML=searchRequest.responseText;
			if(document.querySelector("#txtHint a")){
				document.querySelector("#txtHint a"). addEventListener("click", displayInfo)
			}
		}
	}

	function displayInfo(e){
		//console.log(e.currentTarget.id);
		let customerID = e.currentTarget.id;
		recipeRequest = createRequest();
		console.log(recipeRequest);

		let url="displayrecipe.php?recipeid="+customerID;
		recipeRequest.onreadystatechange=displayStatus;
		recipeRequest.open("GET", url);
		recipeRequest.send(null);
	}

	function displayStatus() {
		if(recipeRequest.readyState===4 && recipeRequest.status===200){
			console.log("displaying status")
			document.querySelector("#maindiv").innerHTML=recipeRequest.responseText;
		}
	}

	searchField.addEventListener("keyup", showResults);
})();	
	
	
	