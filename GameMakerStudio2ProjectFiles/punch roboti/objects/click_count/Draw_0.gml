
function drawTextAtObject(obj, text) {
    // 텍스트의 크기
    var w = string_width_ext(text, global.font_bhs, 1);
    var h = string_height_ext(text, global.font_bhs, 1);
    
   var offsetX = -w / 2;
   var offsetY = -h / 2;
   var scale = 10;
    
    draw_set_font(global.font_bhs);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_transformed(obj.x + offsetX, obj.y + offsetY, text, scale, scale, 0);
}

draw_set_color(c_black)
drawTextAtObject(self, string(clickcount));

