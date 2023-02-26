@PointClass base(Targetname, Angles) studio("models/randombox.mdl") = prop_randombox : "Gives you random item for a price"
[
	type(Choices) : "Type" : 1 =
	[
		1 : "Weapon random box"
		2 : "Item random box"
	]
	price(integer) : "Price" : 300
]