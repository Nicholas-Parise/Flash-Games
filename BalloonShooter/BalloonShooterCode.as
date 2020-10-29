package 
{

	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	import flash.events.Event;
	import flash.events.KeyboardEvent;

	import fl.controls.Button;
	import fl.controls.CheckBox;
	import flash.geom.ColorTransform;
	import flash.text.TextField;
	import flash.text.TextFormat;

	import flash.utils.Timer;
	import flash.events.TimerEvent;


	import flash.media.Sound;
    import flash.media.SoundChannel;


	public class BalloonShooterCode extends MovieClip
	{

		public function BalloonShooterCode()
		{

			//variables

			var bulLev:Number = 0;


			var balloonSound = new Pop  ;
			var shootSound = new Hitmarker  ;


			var mycolor2:ColorTransform = new ColorTransform();
			var mycolor:ColorTransform = new ColorTransform();

			var c:Cannon = new Cannon  ;
			var sc:Scope = new Scope  ;
			var e:explosion = new explosion();
			var o:outline = new outline();
			var p:inside = new inside();
			var ok:Boolean = false;

			var stickman:Stickman = new Stickman();
			var timer:Number = 0;

			var startButt:Button = new Button();
			var menuButt:Button = new Button();


			var allowmusic:CheckBox = new CheckBox();

			var nextlevel:Boolean = false;

			var justwork:Boolean = false;




			var balloonArray:Array = new Array  ;
			var bArray:Array = new Array();
			var XArray:Array = new Array();
			var YArray:Array = new Array();
			var eArray:Array = new Array  ;

			var score:Number = 0;

			var i:Number = 0;
			var j:Number = 0;
			var speed:Number = 25;
			var angle:Number = 0;
			var ReqScore:Number = 48;
			var level:Number = 1;
			var bulletNum:Number = 0;

			var boomBoom:Boolean = false;


			var t3:TextField = new TextField();
			var tf3:TextFormat = new TextFormat();

			var t2:TextField = new TextField();
			var tf2:TextFormat = new TextFormat();

			var t4:TextField = new TextField();
			var tf4:TextFormat = new TextFormat();
			//Nicholas
			var t5:TextField = new TextField();
			var tf5:TextFormat = new TextFormat();

			var t6:TextField = new TextField();
			var tf6:TextFormat = new TextFormat();

			var t7:TextField = new TextField();
			var tf7:TextFormat = new TextFormat();

			var t:TextField = new TextField();
			var tf:TextFormat = new TextFormat();

			var t10:TextField = new TextField();
			var tf10:TextFormat = new TextFormat();


			var t11:TextField = new TextField();
			var tf11:TextFormat = new TextFormat();


			var t12:TextField = new TextField();
			var tf12:TextFormat = new TextFormat();




			//on load

			var Background1 = new Background  ;
			
	
			var playmusic:Boolean = false;


			function testformusic()
			{

				if (playmusic == true)
				{
					
				Background1.play(0,900);
					
					playmusic = false;
				}
			}




			addChild(c);
			c.x = 50;
			c.y = 230;


			addChild(o);
			o.x = 110;
			o.y = 350;
			o.height = 25;


			addChild(p);
			p.x = 115;
			p.y = 350;
			p.width = 0;
			p.height = 20;


			addChild(stickman);
			stickman.x = 50;
			stickman.y = 280;



			Mouse.hide();


			//OnLOad



			addChild(startButt);
			startButt.x = 180;
			startButt.y = 280;
			startButt.width = startButt.width * 2;
			startButt.height = startButt.height * 2;


			startButt.label = "Start Game";

			addChild(menuButt);
			menuButt.x = 225;
			menuButt.y = 350;
			menuButt.label = "MENU";
			menuButt.visible = false;


			addChild(allowmusic);
			allowmusic.x = 225;
			allowmusic.y = 250;
			allowmusic.label = "Play Music?";
			allowmusic.visible = true;


			t.text = String("BALLOON SHOOTER");
			t.setTextFormat(tf);

			t10.setTextFormat(tf10);
			t10.text = String("YOU WIN! .... i guess");

			t3.text = String(score);
			t3.setTextFormat(tf3);

			t5.text = String(ReqScore);
			t5.setTextFormat(tf5);

			t6.text = String(level);
			t6.setTextFormat(tf6);


			t11.text = String(bulletNum);
			t11.setTextFormat(tf11);




			t12.text = String("Bullets Used");
			t12.setTextFormat(tf12);

			addChild(t);
			t.x = 130;
			t.y = 150;
			tf.size = 30;
			tf.bold = true;
			tf.font = "Comic Sans";
			tf.color = 0x000000;
			t.text = String("BALLOON SHOOTER");
			t.setTextFormat(tf);
			t.width = 1000;
			tf.size = 400;


			addChild(t10);
			t10.x = 130;
			t10.y = 200;
			tf10.size = 30;
			tf10.bold = true;
			tf10.font = "Comic Sans";
			tf10.color = 0x000000;
			t10.text = String("YOU WIN! .... i guess");
			t10.setTextFormat(tf10);
			t10.width = 1000;
			tf10.size = 400;
			t10.visible = false
			
			;
			//Nicholas



			addChild(t2);
			t2.x = 350;
			t2.y = 10;
			tf2.size = 30;
			tf2.bold = true;
			tf2.font = "Comic Sans";
			tf2.color = 0x000000;
			t2.text = String("SCORE");
			t2.setTextFormat(tf2);
			t2.visible = false;
			t2.width = 300;


			addChild(t3);
			t3.x = 480;
			t3.y = 10;
			tf3.size = 30;
			tf3.bold = true;
			tf3.font = "Comic Sans";
			tf3.color = 0x000000;
			t3.text = String(score);
			t3.setTextFormat(tf3);
			t3.visible = false;
			t3.width = 300;




			addChild(t4);
			t4.x = 55;
			t4.y = 10;
			tf4.size = 30;
			tf4.bold = true;
			tf4.font = "Comic Sans";
			tf4.color = 0x000000;
			t4.text = String("Required Score");
			t4.setTextFormat(tf4);
			t4.visible = false;
			t4.width = 300;



			addChild(t5);
			t5.x = 280;
			t5.y = 10;
			tf5.size = 30;
			tf5.bold = true;
			tf5.font = "Comic Sans";
			tf5.color = 0x000000;
			t5.text = String(ReqScore);
			t5.setTextFormat(tf5);
			t5.visible = false;
			t5.width = 300;
			t5.visible = false;
			//Nicholas
			addChild(t6);
			t6.x = 90;
			t6.y = 370;
			tf6.size = 30;
			tf6.bold = true;
			tf6.font = "Comic Sans";
			tf6.color = 0x000000;
			t6.text = String(level);
			t6.setTextFormat(tf6);
			t6.visible = false;
			t6.width = 300;


			addChild(t7);
			t7.x = 10;
			t7.y = 370;
			tf7.size = 30;
			tf7.bold = true;
			tf7.font = "Comic Sans";
			tf7.color = 0x000000;
			t7.text = String("level");
			t7.setTextFormat(tf7);
			t7.visible = false;
			t7.width = 300;


			addChild(t11);
			t11.x = 490;
			t11.y = 370;
			tf11.size = 30;
			tf11.bold = true;
			tf11.font = "Comic Sans";
			tf11.color = 0x000000;
			t11.text = String(bulLev);
			t11.setTextFormat(tf11);
			t11.visible = false;
			t11.width = 300;



			addChild(t12);
			t12.x = 300;
			t12.y = 370;
			tf12.size = 30;
			tf12.bold = true;
			tf12.font = "Comic Sans";
			tf12.color = 0x000000;
			t12.text = String("Bullets Left");
			t12.setTextFormat(tf12);
			t12.visible = false;
			t12.width = 300;











			//events

			addEventListener(Event.ENTER_FRAME, mainFuna);
			function mainFuna(evt:Event)
			{
				timer +=  2;
				powerBar();
				scopeOnTop();
				moveBullets();
				bullethit();
				hittest();
				ScoreRefresh();
				growBoomBoom();
				checkscore();
				testscore();
				RemoveAllBalloons();
				JustWinAlready();
				outabullets();
				sc.rotation +=  2;
				testformusic();
			}
			//Nicholas

			stage.addEventListener(MouseEvent.MOUSE_UP, upFun);
			function upFun(evt:MouseEvent)
			{
				shootBullet();
			}

			stage.addEventListener(MouseEvent.MOUSE_DOWN, downFun);
			function downFun(evt:MouseEvent)
			{
				startTimer();

			}



			stage.addEventListener(MouseEvent.MOUSE_MOVE, movefun);
			function movefun(evt:MouseEvent)
			{
				rotateEyes(mouseX, mouseY);
				scopeFun(mouseX, mouseY);
			}


			startButt.addEventListener(MouseEvent.CLICK, startgame);
			function startgame(e:MouseEvent)
			{
				bulletNum = 0;
				bulLev = 8;

				t10.visible = false;
				startButt.visible = false;
				addballoon();

				t2.visible = true;
				t4.visible = true;

				t3.visible = true;
				t5.visible = true;
				t6.visible = true;
				t7.visible = true;
				t.visible = false;
				menuButt.visible = true;
				justwork = false;
				t11.visible = true;
				t12.visible = true;

				if (allowmusic.selected == true)
				{
					playmusic = true;
					allowmusic.selected = false
				}

				allowmusic.visible = false;


			}






			menuButt.addEventListener(MouseEvent.CLICK, endgame);
			function endgame(e:MouseEvent)
			{


				RemoveAllBalloons();

				startButt.visible = true;
				menuButt.visible = false;
				t2.visible = false;
				t4.visible = false;
				t3.visible = false;
				t5.visible = false;
				t6.visible = false;
				t7.visible = false;
				t.visible = true;
				t11.visible = false;
				t12.visible = false;
				

				score = 0;
				ReqScore = 48;
				level = 1;
				justwork = true;
				bulletNum = 0;
				bulLev = 8;


			}


			//Nicholas


			//functions

			function powerBar():void
			{
				if (ok==true&&p.width<100)
				{
					p.width +=  5;
				}
			}


			function startTimer():void
			{
				timer = 0;
				ok = true;
			}




			function addballoon()
			{

				for (var j:Number = 0; j<50; j++)
				{
					mycolor2.color = Math.random() * 0xFFFFFF;


					var b:balloon = new balloon  ;
					balloonArray.push(b);
					addChild(balloonArray[balloonArray.length -1]);
					balloonArray[balloonArray.length - 1].x = Math.random() * 400 + 100;
					balloonArray[balloonArray.length - 1].y = Math.random() * 250 + 60;
					balloonArray[balloonArray.length - 1].transform.colorTransform = mycolor2;


				}
			}
			//Nicholas



			function rotateEyes(X:Number, Y:Number):void
			{

				c.rotation = angle;
				angle=Math.atan2(mouseY-c.y,mouseX-c.x);
				angle = angle * 360 / (2 * Math.PI) + 90;
			}



			function scopeFun(X:Number, Y:Number):void
			{

				sc.y = mouseY;
				sc.x = mouseX;
			}



			function moveBullets():void
			{
				for (i=0; i<bArray.length; i++)
				{
					bArray[i].x +=  XArray[i];
					bArray[i].y +=  YArray[i];
					YArray[i] +=  1;
					bArray[i].rotation = Math.atan2(YArray[i],XArray[i]) * (180 / Math.PI) + 90;


					if (bArray[i].y > 500)
					{

						removeChild(bArray[i]);
						bArray.splice(i, 1);


						XArray.splice(i, 1);
						YArray.splice(i, 1);


						break;




					}
				}
			}





			function shootBullet():void
			{
				ok = false;
				shootSound.play();
				p.width = 0;
				var b:bullet = new bullet();
				mycolor.color = Math.random() * 0xFFFFFF;

				bArray.push(b);
				addChild(bArray[bArray.length-1]);
				bArray[bArray.length - 1].x = c.x;
				bArray[bArray.length - 1].y = c.y;
				bArray[bArray.length - 1].rotation = c.rotation;
				bArray[bArray.length - 1].transform.colorTransform = mycolor;
				var angles:Number = (c.rotation-90)*Math.PI/180;


				if (timer>35)
				{
					timer = 35;
				}


				XArray.push(Math.cos(angles)*timer);
				YArray.push(Math.sin(angles)*timer);


				bulletNum++;
				bulLev--;
			}




			function aimFun():void
			{
				c.rotation = (Math.atan2(mouseY-c.y, mouseX-c.x) * 180/Math.PI)+90;
			}



			function bullethit():void
			{

				for (i=0; i<bArray.length-1; i++)
				{
					for (j = i+1; j<bArray.length; j++)
					{
						if (bArray[i].hitTestObject(bArray[j]))
						{

							var temp:Number;

							temp = bArray[i].x;
							bArray[i].x = bArray[j].x;
							bArray[j].x = temp;

							temp = bArray[i].y;
							bArray[i].y = bArray[j].y;
							bArray[j].y = temp;

						}
					}
				}
			}






			//Nicholas


			function hittest():void
			{

				for (var j:Number = 0; j<balloonArray.length; j++)
				{

					if (bArray[i].hitTestObject(balloonArray[j]))
					{


						score++;

						balloonSound.play(0);

						var explodeY:Number = 0;
						var explodeX:Number = 0;

						//Nicholas
						explodeY = balloonArray[j].y;
						explodeX = balloonArray[j].x;


						makeboomboom(explodeX, explodeY);

						balloonArray[j].y +=  500;
						removeChild(balloonArray[j]);


						balloonArray.splice(j, 1);


					}
				}
			}



			function ScoreRefresh()
			{

				t3.text = String(score);
				t3.setTextFormat(tf3);

				t5.text = String(ReqScore);
				t5.setTextFormat(tf5);

				t6.text = String(level);
				t6.setTextFormat(tf6);


				t11.text = String(bulLev);
				t11.setTextFormat(tf11);




			}





			function growBoomBoom():void
			{


				for (var k:Number = 0; k<eArray.length; k++)
				{
					eArray[k].width +=  5;
					eArray[k].height +=  5;
					if (eArray[k].width > 50)
					{



						eArray[k].width = 1;
						eArray[k].height = 1;

						eArray[k].x +=  900;
						removeChild(eArray[k]);

						eArray.splice(k, 1);

					}
				}
			}




			function makeboomboom(explodeX:Number,explodeY:Number)
			{


				var e:explosion = new explosion();
				eArray.push(e);
				addChild(eArray[eArray.length-1]);
				eArray[eArray.length - 1].x = explodeX;
				eArray[eArray.length - 1].y = explodeY;
				eArray[eArray.length - 1].width = 1;
				eArray[eArray.length - 1].height = 1;

			}



			function testscore()
			{
				if (score>=48*level&&ReqScore==48*level)
				{

					nextlevel = true
					
					;
				}
			}

			function outabullets()
			{

				if (bulLev <= -1)
				{


					RemoveAllBalloons();

					startButt.visible = true;
					menuButt.visible = false;
					t2.visible = false;
					t4.visible = false;
					t3.visible = false;
					t5.visible = false;
					t6.visible = false;
					t7.visible = false;
					t.visible = true;
					t11.visible = false;
					t12.visible = false;
					
					
					score = 0;
					ReqScore = 48;
					level = 1;
					justwork = true;
					bulletNum = 0;
					bulLev = 8;
					
					Background1.stop(0,0);
					Background1.pause(0,0);
					
					
				}
			}


			function checkscore()
			{

				if (nextlevel==true)
				{



					t3.text = String(score);
					t3.setTextFormat(tf3);

					t5.text = String(ReqScore);
					t5.setTextFormat(tf5);

					t6.text = String(level);
					t6.setTextFormat(tf6);

					//Nicholas

					level++;
					bulLev = 8
					;
					addballoon();

					ReqScore +=  48;

					nextlevel = false;

				}
			}





			function RemoveAllBalloons()
			{

				if (justwork==true)
				{
					for (var j:Number = 0; j<balloonArray.length; j++)
					{

						balloonArray[j].visible = false;
						removeChild(balloonArray[j]);

						balloonArray.splice(j, 1);

					}
				}
			}




			function JustWinAlready()
			{

				if (level==100)
				{

					t10.visible = true;

					RemoveAllBalloons();

					startButt.visible = true;
					menuButt.visible = false;
					t2.visible = false;
					t4.visible = false;
					t3.visible = false;
					t5.visible = false;
					t6.visible = false;
					t7.visible = false;
					t.visible = true;
					
					t11.visible = false;
					t12.visible = false;

					score = 0;
					ReqScore = 48;
					level = 1;
					justwork = true;
					

				}
			}





			function scopeOnTop()
			{
				addChild(sc);

			}






		}
	}
}