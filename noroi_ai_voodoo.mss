#include "lambda.h"

/*
　文字列は imgSetCurrent で有効になっているイメージに描画される。
*/
main()
{
	var type, stat;
	var txt;
	var x, y,pin[200],x1;
	var bg;
	x = 100;
	y = 100;
	SprSetLevel(2);
	bg = imgLoad("boodoo.png", 0, 0);
	imgSetCurrent(bg);
	imgSetTrans(true, 31, 0, 31);
	for(x1 = 0; x1 < 200; x1 += 1){
	pin[x1] = imgLoad("pin.png", 0, 0);
	imgSetCurrent(pin[x1]);
	imgSetTrans(true, 31, 0, 31);
	}
	x1=0;
	timeSetFPS(30);
	timeClear();

	sprRenderScreen();
	mosClear();

	while(1)
	{
		while(mosGet(type, x, y))
		{
			if(type == MOS_LEFT)
				{
				imgSetCurrent(pin[x1]);
				imgSetPos(x, y);
				x1+=1;
				mosClear();
				}
		}
		timeWait();
		sprRenderScreen();
	}
}