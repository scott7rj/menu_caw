function resetMenu() {
	document.getElementsByTagName("rightdv")[0].innerHTML = '';
}
function getParent(obj) {
	let menu = JSON.parse(sessionStorage.getItem('menu'));
	let ret;
	for (i = 0; i < menu.items.length; i++) {
		if (obj.id_parent === menu.items[i].id) {
			ret = menu.items[i];
			break;
		}
	}
	return ret;
}
function searchMenu() {

	let input, filter, ul, li, a, i, div;
	const ALL = 'ALL';
	input = document.getElementById("txtSearch");
	filter = input.value.toUpperCase();
	div = document.getElementById("hiddendv");
	li = div.getElementsByTagName("li");
	if (filter === '') {
		resetMenu();
		return;
	} else if (filter === ALL) {
		for (i = 0; i < li.length; i++) {
			li[i].style.display = "";
		}
	} else {
		for (i = 0; i < li.length; i++) {
			if (filter === '') {
				li[i].style.display = "";
			} else {
				a = li[i].getElementsByTagName("a")[0];
				if (li[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
					li[i].style.display = "";
				} else {
					li[i].style.display = "none";
				}
			}
		}
	}
	document.getElementsByTagName("rightdv")[0].innerHTML = div.innerHTML;
}
function buildItems(id_menu, arr, level) {
	let i, ii, iii, iv, v, res2, res3, res4, res5, params, out = '';
	let res = arr.filter(i1 => i1.tree_level === level);
	out = '<ul id="menu" class="a">'
	for(i = 0; i < res.length; i++) {

		out += '<li>';
		out += '<a id="' + res[i].id + '" href="#" onclick="menuitem(\'' + res[i].path + '\',\'' + res[i].url + '\')" class="' + res[i].path + '" tree="' + res[i].tree_level + '">' + 
				res[i].description + 
				'</a>';

		if (res[i].children > 0) {
			res2 = arr.filter(i2 => i2.id_parent === res[i].id);
			out += '<ul>';
			for(ii = 0; ii < res2.length; ii++) {
				out += '<li>';
				out += '<a id="' + res2[ii].id + '" href="#" onclick="menuitem(\'' + res2[ii].path + '\',\'' + res2[ii].url + '\')" class="' + res2[ii].path + '" tree="' + res2[ii].tree_level + '">' + 
						res2[ii].description + 
						'</a>';
				
				if (res2[ii].children > 0) {
					res3 = arr.filter(i3 => i3.id_parent === res2[ii].id);
					out += '<ul>';
					for(iii = 0; iii < res3.length; iii++) {
						out += '<li>';
						out += '<a id="' + res3[iii].id + '" href="#" onclick="menuitem(\'' + res3[iii].path + '\',\'' + res3[iii].url + '\')" class="' + res3[iii].path + '" tree="' + res3[iii].tree_level + '">' + 
								res3[iii].description + 
								'</a>';

						if (res3[iii].children > 0) {
							res4 = arr.filter(i4 => i4.id_parent === res3[iii].id);
							out += '<ul>';
							for(iv = 0; iv < res4.length; iv++) {
								out += '<li>';
								out += '<a id="' + res4[iv].id + '" href="#" onclick="menuitem(\'' + res4[iv].path + '\',\'' + res4[iv].url + '\')" class="' + res4[iv].path + '" tree="' + res4[iv].tree_level + '">' + 
										res4[iv].description + 
										'</a>';
								
								if (res4[iv].children > 0) {
									res5 = arr.filter(i5 => i5.id_parent === res4[iv].id);
									out += '<ul>';
									for(v = 0; v < res5.length; v++) {
										out += '<li>';
										out += '<a id="' + res5[v].id + '" href="#" onclick="menuitem(\'' + res5[v].path + '\',\'' + res[v].url + '\')" class="' + res5[v].path + '" tree="' + res5[v].tree_level + '">' + 
												res5[v].description + 
												'</a>';
										out += '</li>';
									}
									out += '</ul>'

								} else {
									out += '</li>';
								}

								out += '</li>';
							}
							out += '</ul>';

						} else {
							out += '</li>';
						}

						out += '</li>';
					}
					out += '</ul>';

				} else {
					out += '</li>';
				}
				
				out += '</li>';
			}
			out += '</ul>';

		} else {
			out += '</li>';
		}
		out += '</li>';
	}
	out += '</ul>';
	return out;
}
function listItem(id, path) {
	let i, out;
	let arr = new Array();
	let menu = JSON.parse(sessionStorage.getItem('menu'));
	for (i = 0; i < menu.items.length; i++) {
		if (menu.items[i].path.indexOf(path) === 0) {
			arr.push(menu.items[i]);
		}
	}
	document.getElementsByTagName('rightdv')[0].innerHTML = buildItems(1, arr, 1);
}
function viewMenu() {
	let i, out;
	let menu = JSON.parse(sessionStorage.getItem('menu'));

	document.getElementById('hiddendv').innerHTML = buildItems(1, menu.items, 1);

	if (document.getElementById('menudv').style.display === '') {
		document.getElementById('menudv').style.display = 'none';
		document.getElementsByTagName('rightdv')[0].innerHTML = '';
		document.getElementById('txtSearch').value = '';
		return;
	}
	out = '';
	for (i = 0; i < menu.items.length; i++) {
		if (menu.items[i].tree_level === 1) {
			out += '<button class="button" onclick="listItem(' + menu.items[i].id + ',\'' + menu.items[i].path + '\')"><img src="' + menu.items[i].img + '" width="20" />' + menu.items[i].description + '</button>';
		}
	}
	document.getElementsByTagName('leftdv')[0].innerHTML = out;
	document.getElementById('menudv').style.display = '';
	document.getElementById('txtSearch').focus();
}
function loadSessionMenu(id_menu) {
	let xmlhttp = new XMLHttpRequest();
	let url = "https://apex.oracle.com/pls/apex/www/ws/menu/" + id_menu;
	
	xmlhttp.onreadystatechange = function() {
    	if (this.readyState == 4 && this.status == 200) {
			sessionStorage.setItem('menu', this.responseText);
    	}
	};
	xmlhttp.open("GET", url, true);
	xmlhttp.send();
}