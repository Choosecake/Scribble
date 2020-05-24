/// @param textElement       Text element to target. This element must have been created previously by scribble_draw()
/// @param soundArray        Array of sound assets that can be used for playback
/// @param minPitch
/// @param maxPitch
/// @param [occuranceName]
/// 
/// It's quite common in games with typewriter-style text animations to have a "mumble" or "gibberish" sound effect
/// that plays whilst text is being revealed. This function allows you to define an array of sound effects that will
/// be randomly played as text is revealed.

var _scribble_array = argument[0];
var _sound          = argument[1];
var _min_pitch      = argument[2];
var _max_pitch      = argument[3];
var _occurance_name = ((argument_count > 4) && (argument[4] != undefined))? argument[4] : global.__scribble_default_occurance_name;

if (!is_array(_sound)) _sound = [_sound];

//Find our occurance data
var _occurance_map = _scribble_array[SCRIBBLE.OCCURANCES_MAP];
var _occurance_array = _occurance_map[? _occurance_name];

_occurance_array[@ __SCRIBBLE_OCCURANCE.SOUND_ARRAY    ] = _sound;
_occurance_array[@ __SCRIBBLE_OCCURANCE.SOUND_OVERLAP  ] = 0;
_occurance_array[@ __SCRIBBLE_OCCURANCE.SOUND_PER_CHAR ] = true;
_occurance_array[@ __SCRIBBLE_OCCURANCE.SOUND_MIN_PITCH] = _min_pitch;
_occurance_array[@ __SCRIBBLE_OCCURANCE.SOUND_MAX_PITCH] = _max_pitch;