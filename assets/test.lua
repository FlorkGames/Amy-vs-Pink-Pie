function onCreate()
	-- background shit
	makeLuaSprite('cenario', 'cenario', -600, -300);
	setScrollFactor('cenario', 0.9, 0.9);
	
	makeLuaSprite('oi', 'oi', -650, 600);
	setScrollFactor('oi', 0.9, 0.9);
	scaleObject('oi', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('oi', 'oi', -125, -100);
		setScrollFactor('oi', 0.9, 0.9);
		scaleObject('oi', 1.1, 1.1);
		
		makeLuaSprite('oi', 'oi', 1225, -100);
		setScrollFactor('oi', 0.9, 0.9);
		scaleObject('oi', 1.1, 1.1);
		setProperty('oi', true); --mirror sprite horizontally

		makeLuaSprite('oi', 'oi', -500, -300);
		setScrollFactor('oi', 1.3, 1.3);
		scaleObject('oi', 0.9, 0.9);
	end

	addLuaSprite('cenario', false);
	addLuaSprite('oi', false);
	addLuaSprite('oi', false);
	addLuaSprite('oi', false);
	addLuaSprite('oi', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end