draw_set_font(spritefont);
draw_text(10, 10, "The Quick Brown Fox Jumps Over The Lazy Dog!");
draw_set_font(-1);

scribble_draw(text, x, y);

var _box = scribble_get_box(text,   x, y,   5, 5,   5, 5);
draw_rectangle(_box[SCRIBBLE_BOX.X0], _box[SCRIBBLE_BOX.Y0],
               _box[SCRIBBLE_BOX.X3], _box[SCRIBBLE_BOX.Y3], true);