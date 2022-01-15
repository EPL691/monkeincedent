package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class EngineSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Engine Settings';
		rpcTitle = 'Engine Settings Menu'; //for Discord Rich Presence
		

		//I'd suggest using "Downscroll" as an example for making your own option since it is the simplest here
		var option:Option = new Option('jumpscares', //Name
			'If checked, All jumpscares will be disasabled', //Description
			'jumpScares', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);

		super();
	}
}