package util;

import java.util.ArrayList;

import model.Menu;

public class MenuManager {
	
	private ArrayList<Menu> menulist = new ArrayList<Menu>();
	
	public void putMenu(Menu menu) {
		this.menulist.add(menu);
	}
	
	public String printMenuList() {
		ArrayList<Menu> v = this.menulist;
		String result = "";
		for(int i=0; i<v.size(); i++) {
			result += "<a href='" +v.get(i).getHref()+"'>"+v.get(i).getName()+"</a>"; 
		}
		
		return result;
	}

}
