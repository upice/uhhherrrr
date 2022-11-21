package;

import Paths;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.editors.ogmo.FlxOgmo3Loader;
import flixel.system.macros.FlxAssetPaths;
import flixel.tile.FlxTilemap;

// room state
class OverworldState extends FlxState
{
	var room:String = "assets/bfRoom/";

	var map:FlxOgmo3Loader = new FlxOgmo3Loader("bfRoom/data/aa.ogmo", "bfRoom/data/rTest.json");
	var player:FlxSprite;
	var walls:FlxTilemap;
	var phone:FlxSprite;

	override public function create()
	{
		walls = map.loadTilemap("bfRoom/images/carpet1", "walls");
		walls.follow();
		walls.setTileProperties(1, NONE);
		add(walls);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
