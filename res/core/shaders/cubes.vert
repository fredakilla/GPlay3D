$input a_position, a_color0
$output v_color0

/*
 * Copyright 2011-2018 Branimir Karadzic. All rights reserved.
 * License: https://github.com/bkaradzic/bgfx#license-bsd-2-clause
 */

#include "common/common.sh"

uniform mat4 u_mvp;

void main()
{
	gl_Position = mul(u_mvp, vec4(a_position, 1.0) );
	v_color0 = a_color0;
}