scribble_typewriter_step(text);
scribble_typewriter_step(test_text);

if (scribble_typewriter_get_state(text) == 1) scribble_typewriter_perform(text, false);
if (scribble_typewriter_get_state(text) == 2) scribble_typewriter_perform(text, true);