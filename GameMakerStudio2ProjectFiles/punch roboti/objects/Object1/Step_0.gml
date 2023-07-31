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



