package;

import haxe.macro.Context;
import haxe.macro.Expr;

class Platform
{
	public static macro function getBuildPlatform():Expr
	{
		final value = Context.definedValue('buildPlatform');

		return macro $v{value != null ? value : ''};
	}
}
