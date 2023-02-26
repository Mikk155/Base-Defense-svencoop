@PointClass base(Targetname, Angles) flags(Angle) size(-16 -16 -16, 16 16 16) studio() = env_model : "Entity to place studio models on the map" 
[
	model(studio) : "Model"
	scale(string) : "Scale"
	anim(integer) : "Animation" : 0
	renderfx(choices) : "Render FX" : 0 =
	[
		0: "Normal"
		1: "Slow Pulse"
		2: "Fast Pulse"
		3: "Slow Wide Pulse"
		4: "Fast Wide Pulse"
		9: "Slow Strobe"
		10: "Fast Strobe"
		11: "Faster Strobe"
		12: "Slow Flicker"
		13: "Fast Flicker"
		5: "Slow Fade Away"
		6: "Fast Fade Away"
		7: "Slow Become Solid"
		8: "Fast Become Solid"
		14: "Constant Glow"
		15: "Distort"
		16: "Hologram (Distort + fade)"
	]
	rendermode(choices) : "Render Mode" : 0 =
	[
		0: "Normal"
		1: "Color"
		2: "Texture"
		3: "Glow"
		4: "Solid"
		5: "Additive"
	]
	renderamt(integer) : "FX Amount (1 - 255)"
	rendercolor(color255) : "FX Color (R G B)" : "0 0 0"
]