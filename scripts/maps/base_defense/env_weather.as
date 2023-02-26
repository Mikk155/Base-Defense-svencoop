@PointClass size(-8 -8 -8, 8 8 8) color(160 60 250) = env_weather : "Weather settings" 
[
	distance(integer) : "Distance" : 1000
	mode(choices) : "Weather type" : 0 =
	[
		0: "Rain"
		1: "Snow"
	]
	count(integer) : "Count per second" : 800
	wind_x(integer) : "Wind X" : 0
	wind_y(integer) : "Wind Y" : 0
	rand_x(integer) : "Random X" : 10
	rand_y(integer) : "Random Y" : 10
]