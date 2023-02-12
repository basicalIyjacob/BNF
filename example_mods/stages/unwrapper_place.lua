function onCreate()
	makeLuaSprite('BG', 'unwrapper_place/UNWRAPPER_Sky', -900, -850);
	addLuaSprite('BG',false);
	scaleObject('BG',1.3,1.3);

	
	makeLuaSprite('BG2', 'unwrapper_place/UNWRAPPER_Walls', -900, -850);
	addLuaSprite('BG2',false);
	scaleObject('BG2',1.3,1.3);


	makeLuaSprite('BG3', 'unwrapper_place/UNWRAPPER_Floor', -900, -850);
	addLuaSprite('BG3',false);
	scaleObject('BG3',1.3,1.3);

end