if alarm[0] > 0 {
    alarm[0] -= 1;  // 딜레이 카운트 다운
} else {
    currentFrame = 0;  // 첫 번째 프레임으로 돌아감
    image_index = currentFrame;  // 이미지 인덱스 설정
}