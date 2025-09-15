if keyboard_check_pressed(vk_up){
    select_level -= 1
    audio_play_sound(snd_menumove,10,0)
    if select_level < 0{select_level = array_length(menu_text[select_depth]) - 1}
}
if keyboard_check_pressed(vk_down){
    audio_play_sound(snd_menumove,10,0)
    select_level += 1
    if select_level >= array_length(menu_text[select_depth]){select_level = 0}
}
if keyboard_check_pressed(ord("Z")){ // move forward through the menu
	
	audio_play_sound(snd_select,10,0)
	
    // If it should progress to the fight o algo, check and do here:
    
    //

    select_depth = select_level + 1;
    select_level = 0;
}
if select_depth != 0 and keyboard_check_pressed(ord("X")){ // GRR go BACK!!!!
    audio_play_sound(snd_select,10,0)
    select_level = select_depth - 1;
    select_depth = 0;
}