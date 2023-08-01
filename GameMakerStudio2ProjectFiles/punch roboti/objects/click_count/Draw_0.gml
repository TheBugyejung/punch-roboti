text_scale = 5

draw_set_color(c_black)
draw_set_font(global.font_bhs)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(x, y, string(clickcount), text_scale, text_scale, 0)
//draw_text(x, y, string(clickcount))