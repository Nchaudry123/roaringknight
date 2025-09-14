for(var i = 0; i < array_length(menu_text[select_depth]); i++){
	var use_text = menu_text[select_depth][i];
	
	draw_set_colour(c_white);
	draw_set_font(default_font)

	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	
	draw_text(x/2, 40, menu_title_text[select_depth])
	
	draw_set_halign(fa_left)
	
	var tempx = 120 
	var tempy = 100 + (i*60)
	
	if i == select_level{draw_set_colour(c_yellow)}
	
	draw_text(tempx, tempy, use_text)
	
	if i == select_level{draw_sprite_ext(spr_red_soul, 0, tempx - 36, tempy - 8, 2, 2, 0, c_white, 1)} // draw heart next to selection
	
}