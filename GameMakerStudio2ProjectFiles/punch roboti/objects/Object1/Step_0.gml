if mouse_check_button_pressed(mb_left) 
or mouse_check_button_pressed(mb_right) 
or keyboard_check_pressed(vk_anykey) 
and !isPlaying {
    isPlaying = true;  // 애니메이션 재생 상태로 설정
    currentFrame = 0;  // 첫 번째 프레임으로 초기화
    image_index = currentFrame;  // 이미지 인덱스 설정
    image_speed = 1;  // 이미지 속도 설정 (1은 정상 속도)
}

if isPlaying {
    if currentFrame < sprite_get_number(sprite_index) - 1 {
        // 현재 프레임이 마지막 프레임이 아닌 경우
        currentFrame += 1;  // 다음 프레임으로 이동
        image_index = currentFrame;  // 이미지 인덱스 설정
    } else {
        // 마지막 프레임에 도달한 경우
        isPlaying = false;  // 애니메이션 재생 상태 해제
        alarm[0] = 2;  // 60 프레임 (1초) 동안 딜레이
    }
}



if ( keyboard_check_pressed( vk_f12 )) {
	window_set_fullscreen( !window_get_fullscreen());
}


if (keyboard_check_pressed(ord("1"))) {
	sprite_index = Sprite1;
	lazer_sound = 0
}

if (keyboard_check_pressed(ord("2"))) {
	sprite_index = Sprite2;
	lazer_sound = 0
}

if (keyboard_check_pressed(ord("3"))) {
	sprite_index = Sprite3;
	lazer_sound = 0
}

if (keyboard_check_pressed(ord("4"))) {
	sprite_index = Sprite4;
	lazer_sound = 1
}


if mouse_check_button_pressed(mb_left)or mouse_check_button_pressed(mb_right) 
or keyboard_check_pressed(vk_anykey) {
	if (lazer_sound == 0) {
		audio_play_sound(punch, 1, false)
	}
		else if (lazer_sound == 1) {
		audio_play_sound(lazer, 1, false)
		}
}


if (keyboard_check_pressed(vk_f2)) {
	window_set_size(768, 1366)
	room_goto(1);
}