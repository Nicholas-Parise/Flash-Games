package 
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.events.MouseEvent;
	import flash.geom.ColorTransform;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import fl.controls.Button;

	public class GalagaCode extends MovieClip
	{

		public function GalagaCode()
		{

			//variables

			var mycolor:ColorTransform = new ColorTransform();

			//bee += 50
			//butterfly score += 160
			// sucker alien score += 400

			var thisthenthat:Number;
			var sArray:Array = new Array  ;
			var speedArray:Array = new Array  ;

			var dir:String = "stop";
			var dir2:String = "stop";

			var score:Number = 0;
			var level:Number = 1;
			var whenfall:Number = 18;
			var countdown:Number = 5;
			var ShipHealth:Number = 50;
			var tempx:Number = 0;
			var tempy:Number = 0;

			var isdead:Boolean = false;
			var justdoitonce:Boolean = false;

			var GL:Galaga_Logo = new Galaga_Logo  ;
			addChild(GL);
			GL.x = 275;
			GL.y = 200;


			var startButt:Button = new Button();
			addChild(startButt);
			startButt.x = 180;
			startButt.y = 300;
			startButt.width = startButt.width * 2;
			startButt.height = startButt.height * 2;
			startButt.label = "Start Game";


			var SAo:Number = 3;
			var SAo2:Number = 3;
			var SAo3:Number = 3;
			var SAo4:Number = 3;

			var hello:Number;
			var down:Number;

			var speed:Number = 0;


			var out:outline = new outline();
			var ins:inside = new inside();

			addChild(out);
			out.x = 30;
			out.y = 350;
			out.height = 25;
			out.visible = false;

			addChild(ins);
			ins.x = 35;
			ins.y = 350;
			ins.width = 100;
			ins.height = 20;
			ins.visible = false;

			var timer:Number = 10000;

			var runonce:Boolean = true;
			var runonce2:Boolean = true;
			var runonce3:Boolean = true;
			var runonce4:Boolean = true;
			var runonce5:Boolean = true;
			var runonce6:Boolean = true;
			var runonce7:Boolean = true;
			var runonce8:Boolean = true;
			var runonce9:Boolean = true;
			var runonce10:Boolean = true;
			var runonce11:Boolean = true;
			var runonce12:Boolean = true;
			var runonce13:Boolean = true;
			var runonce14:Boolean = true;
			var runonce15:Boolean = true;
			var runonce16:Boolean = true;
			var runonce17:Boolean = true;


			var pPlay:Boolean = false;
			var p2Play:Boolean = false;
			var p3Play:Boolean = false;
			var p4Play:Boolean = false;
			var p5Play:Boolean = false;
			var p6Play:Boolean = false;
			var p7Play:Boolean = false;
			var p8Play:Boolean = false;
			var p9Play:Boolean = false;
			var p10Play:Boolean = false;


			var B2Play:Boolean = false;
			var B3Play:Boolean = false;
			var B4Play:Boolean = false;
			var B5Play:Boolean = false;
			var B6Play:Boolean = false;
			var B7Play:Boolean = false;
			var B8Play:Boolean = false;

			var Brunonce:Boolean = true;
			var Brunonce2:Boolean = true;
			var Brunonce3:Boolean = true;
			var Brunonce4:Boolean = true;
			var Brunonce5:Boolean = true;
			var Brunonce6:Boolean = true;
			var Brunonce7:Boolean = true;
			var Brunonce8:Boolean = true;

			var expTempX:Number = 0;
			var expTempY:Number = 0;
			var exp2TempX:Number = 0;
			var exp2TempY:Number = 0;
			var exp3TempX:Number = 0;
			var exp3TempY:Number = 0;
			var exp4TempX:Number = 0;
			var exp4TempY:Number = 0;
			var exp5TempX:Number = 0;
			var exp5TempY:Number = 0;
			var exp6TempX:Number = 0;
			var exp6TempY:Number = 0;
			var exp7TempX:Number = 0;
			var exp7TempY:Number = 0;
			var exp8TempX:Number = 0;
			var exp8TempY:Number = 0;
			var exp9TempX:Number = 0;
			var exp9TempY:Number = 0;
			var exp10TempX:Number = 0;
			var exp10TempY:Number = 0;
			var exp11TempX:Number = 0;
			var exp11TempY:Number = 0;
			var exp12TempX:Number = 0;
			var exp12TempY:Number = 0;
			var exp13TempX:Number = 0;
			var exp13TempY:Number = 0;
			var exp14TempX:Number = 0;
			var exp14TempY:Number = 0;
			var exp15TempX:Number = 0;
			var exp15TempY:Number = 0;
			var exp16TempX:Number = 0;
			var exp16TempY:Number = 0;
			var exp17TempX:Number = 0;
			var exp17TempY:Number = 0;
			var exp18TempX:Number = 0;
			var exp18TempY:Number = 0;
			var exp19TempX:Number = 0;
			var exp19TempY:Number = 0;
			var exp20TempX:Number = 0;
			var exp20TempY:Number = 0;


			var startsound = new Galagastart();

			var ShootingSound = new Shooting();

			var BeeDie = new BeeSound();

			var ButterDie = new ButterflySound();

			var GreenDie = new GreenSuckerSound();

			var Kamikazi = new Explosion();

			var S:Ship = new Ship  ;
			addChild(S);
			S.x = 2000;
			S.y = 350;
			S.width = 55;
			S.height = 60;

			var b:Bullet = new Bullet  ;

			//var Bee:bee=new bee  ;
			var BF:Butter_Fly = new Butter_Fly  ;
			//var SA:SuckerAlien = new SuckerAlien


			var t:TextField = new TextField();
			addChild(t);
			t.x = 10;
			t.y = 30;
			var tf:TextFormat = new TextFormat();
			tf.size = 30;
			tf.bold = true;
			tf.font = "Comic Sans";
			tf.color = 0xFFFFFF;
			t.text = String(score);
			t.setTextFormat(tf);
			t.visible = false;


			var t2:TextField = new TextField();
			addChild(t2);
			t2.x = 0;
			t2.y = 0;
			var tf2:TextFormat = new TextFormat();
			tf2.size = 30;
			tf2.bold = true;
			tf2.font = "Comic Sans";
			tf2.color = 0xFFFFFF;
			t2.text = String("score");
			t2.setTextFormat(tf2);
			t2.visible = false;



			var t3:TextField = new TextField();
			addChild(t3);
			t3.x = 500;
			t3.y = 30;
			var tf3:TextFormat = new TextFormat();
			tf3.size = 30;
			tf3.bold = true;
			tf3.font = "Comic Sans";
			tf3.color = 0xFFFFFF;
			t3.text = String(level);
			t3.setTextFormat(tf3);
			t3.visible = false;

			var t4:TextField = new TextField();
			addChild(t4);
			t4.x = 450;
			t4.y = 0;
			var tf4:TextFormat = new TextFormat();
			tf4.size = 30;
			tf4.bold = true;
			tf4.font = "Comic Sans";
			tf4.color = 0xFFFFFF;
			t4.text = String("Level");
			t4.setTextFormat(tf4);
			t4.visible = false;


			var t5:TextField = new TextField();
			addChild(t5);
			t5.x = 275;
			t5.y = 200;
			var tf5:TextFormat = new TextFormat();
			tf5.size = 30;
			tf5.bold = true;
			tf5.font = "Comic Sans";
			tf5.color = 0xFF0000;
			t5.text = String(countdown);
			t5.setTextFormat(tf5);
			t5.visible = false;


			var t6:TextField = new TextField();
			addChild(t6);
			t6.x = 210;
			t6.y = 100;
			var tf6:TextFormat = new TextFormat();
			tf6.size = 30;
			tf6.bold = true;
			tf6.font = "Comic Sans";
			tf6.color = 0xFF0000;
			t6.text = String("START IN");
			t6.setTextFormat(tf6);
			t6.visible = false;
			t6.width = 500;


			var t7:TextField = new TextField();
			addChild(t7);
			t7.x = 120;
			t7.y = 60;
			var tf7:TextFormat = new TextFormat();
			tf7.size = 30;
			tf7.bold = true;
			tf7.font = "Comic Sans";
			tf7.color = 0xFFFFFF;
			t7.text = String("Final Score: ");
			t7.setTextFormat(tf7);
			t7.visible = false;
			t7.width = 500;

			var t8:TextField = new TextField();
			addChild(t8);
			t8.x = 320;
			t8.y = 60;
			var tf8:TextFormat = new TextFormat();
			tf8.size = 30;
			tf8.bold = true;
			tf8.font = "Comic Sans";
			tf8.color = 0xFFFFFF;
			t8.text = String(score);
			t8.setTextFormat(tf8);
			t8.visible = false;


			var t42:TextField = new TextField();
			addChild(t42);
			t42.x = 210;
			t42.y = 100;
			var tf42:TextFormat = new TextFormat();
			tf42.size = 30;
			tf42.bold = true;
			tf42.font = "Comic Sans";
			tf42.color = 0xFF0000;
			t42.text = String("You Lose!");
			t42.setTextFormat(tf42);
			t42.visible = false;
			t42.width = 500;


			var t69:TextField = new TextField();
			addChild(t69);
			t69.x = 200;
			t69.y = 350;
			var tf69:TextFormat = new TextFormat();
			tf69.size = 20;
			tf69.bold = true;
			tf69.font = "Comic Sans";
			tf69.color = 0xFFFFFF;
			t69.text = String("By. Nicholas Parise");
			t69.setTextFormat(tf69);
			t69.visible = true;
			t69.width = 500;







			//onload

			for (var i:Number = 0; i<100; i++)
			{
				var s: Stars = new Stars();

				sArray.push(s);
				speedArray.push(Math.random()*4+1);
				addChild(sArray[i]);
				sArray[i].x = Math.random() * 600 - 50;
				sArray[i].y = Math.random() * 400;
				mycolor.color = Math.random() * 0xFFFFFF;
				sArray[sArray.length - 1].transform.colorTransform = mycolor;
			}






			addChild(b);
			b.visible = false;
			b.y = 500;


			//events

			//Bee Alien Paths/////////////

			var p:Bee_Path = new Bee_Path  ;
			p.width = 50;
			p.height = 30;

			var p2:Bee_Path = new Bee_Path  ;
			p2.width = 50;
			p2.height = 30;
			var p3:Bee_Path = new Bee_Path  ;
			p3.width = 50;
			p3.height = 30;
			var p4:Bee_Path = new Bee_Path  ;
			p4.width = 50;
			p4.height = 30;
			var p5:Bee_Path = new Bee_Path  ;
			p5.width = 50;
			p5.height = 30;
			var p6:Bee_Path = new Bee_Path  ;
			p6.width = 50;
			p6.height = 30;
			var p7:Bee_Path = new Bee_Path  ;
			p7.width = 50;
			p7.height = 30;
			var p8:Bee_Path = new Bee_Path  ;
			p8.width = 50;
			p8.height = 30;
			var p9:Bee_Path = new Bee_Path  ;
			p9.width = 50;
			p9.height = 30;

			var B2:Butter_Fly_Path = new Butter_Fly_Path  ;
			B2.width = 50;
			B2.height = 30;
			var B3:Butter_Fly_Path = new Butter_Fly_Path  ;
			B3.width = 50;
			B3.height = 30;
			var B4:Butter_Fly_Path = new Butter_Fly_Path  ;
			B4.width = 50;
			B4.height = 30;
			var B5:Butter_Fly_Path = new Butter_Fly_Path  ;
			B5.width = 50;
			B5.height = 30;
			var B6:Butter_Fly_Path = new Butter_Fly_Path  ;
			B6.width = 50;
			B6.height = 30;
			var B7:Butter_Fly_Path = new Butter_Fly_Path  ;
			B7.width = 50;
			B7.height = 30;
			var B8:Butter_Fly_Path = new Butter_Fly_Path  ;
			B8.width = 50;
			B8.height = 30;


			var SA:SuckerAlien_Path = new SuckerAlien_Path  ;
			SA.width = 70;
			SA.height = 50;
			var SA2:SuckerAlien_Path = new SuckerAlien_Path  ;
			SA2.width = 70;
			SA2.height = 50;
			var SA3:SuckerAlien_Path = new SuckerAlien_Path  ;
			SA3.width = 70;
			SA3.height = 50;
			var SA4:SuckerAlien_Path = new SuckerAlien_Path  ;
			SA4.width = 70;
			SA4.height = 50;



			//var over:GameOver = new GameOver  ;
			//addChild(over);
			//over.x = 275;
			//over.y = 200;
			//over.visible = false


			var exp:Explosion_an = new Explosion_an  ;
			addChild(exp);
			exp.y = 800;

			var exp2:Explosion_an = new Explosion_an  ;
			addChild(exp2);
			exp2.y = 800;

			var exp3:Explosion_an = new Explosion_an  ;
			addChild(exp3);
			exp3.y = 800;

			var exp4:Explosion_an = new Explosion_an  ;
			addChild(exp4);
			exp4.y = 800;

			var exp5:Explosion_an = new Explosion_an  ;
			addChild(exp5);
			exp5.y = 800;

			var exp6:Explosion_an = new Explosion_an  ;
			addChild(exp6);
			exp6.y = 800;

			var exp7:Explosion_an = new Explosion_an  ;
			addChild(exp7);
			exp7.y = 800;

			var exp8:Explosion_an = new Explosion_an  ;
			addChild(exp8);
			exp8.y = 800;

			var exp9:Explosion_an = new Explosion_an  ;
			addChild(exp9);
			exp9.y = 800;

			var exp10:Explosion_an = new Explosion_an  ;
			addChild(exp10);
			exp10.y = 800;

			var exp11:Explosion_an = new Explosion_an  ;
			addChild(exp11);
			exp11.y = 800;

			var exp12:Explosion_an = new Explosion_an  ;
			addChild(exp12);
			exp12.y = 800;

			var exp13:Explosion_an = new Explosion_an  ;
			addChild(exp13);
			exp13.y = 800;

			var exp14:Explosion_an = new Explosion_an  ;
			addChild(exp14);
			exp14.y = 800;

			var exp15:Explosion_an = new Explosion_an  ;
			addChild(exp15);
			exp15.y = 800;

			var exp16:Explosion_an = new Explosion_an  ;
			addChild(exp16);
			exp16.y = 800;

			var exp17:Explosion_an = new Explosion_an  ;
			addChild(exp17);
			exp17.y = 800;

			var exp18:Explosion_an = new Explosion_an  ;
			addChild(exp18);
			exp18.y = 800;

			var exp19:Explosion_an = new Explosion_an  ;
			addChild(exp19);
			exp19.y = 800;

			var exp20:Explosion_an = new Explosion_an  ;
			addChild(exp20);
			exp20.y = 800;


			var exp69:Explosion_an = new Explosion_an  ;
			addChild(exp69);
			exp69.y = 800;


			var exp420:Explosiontest = new Explosiontest  ;
			addChild(exp420);
			exp420.y = 800;


			var SAPlay:Boolean = false;
			var SArunonce:Boolean = true;

			var SA2Play:Boolean = false;
			var SA2runonce:Boolean = true;

			var SA3Play:Boolean = false;
			var SA3runonce:Boolean = true;

			var SA4Play:Boolean = false;
			var SA4runonce:Boolean = true;

			var SATemp:Number = 0;
			var SA2Temp:Number = 0;
			var SA3Temp:Number = 0;
			var SA4Temp:Number = 0;
			
			/////////////////////////

			addEventListener(Event.ENTER_FRAME, mainFun);
			function mainFun(e:Event)
			{

				timer++;
				thisthenthat = 18 - level;
				whenfall = thisthenthat;


				if (level >= 17)
				{

					whenfall = 1;
				}


				if (ShipHealth >50)
				{

					ShipHealth = 50;

				}


				if (ins.width > 100)
				{

					ins.width = 100;

				}

				if (ShipHealth<=0)
				{
					isdead = true;

				}

				if (ShipHealth == -420)
				{
					isdead = false;
				}


				if (isdead == true)
				{
					isdead = false;
					exp420.x = S.x;
					exp420.y = S.y;
					exp420.gotoAndPlay(1);

					ShipHealth = -420;
					S.x = 15000;
					ins.width = 0;
					whenfall = -500000;
					justdoitonce = true;
					t42.visible = true;

					if (justdoitonce == true)
					{
						timer = 400;
						justdoitonce = false;
					}

				}

				if (timer == 500)
				{
					t42.visible = false;
					EndGame();
				}


				t.text = String(score);
				t.setTextFormat(tf);

				t3.text = String(level);
				t3.setTextFormat(tf3);

				t5.text = String(countdown);
				t5.setTextFormat(tf5);

				t8.text = String(score);
				t8.setTextFormat(tf8);

				if (score>=3170*level && ShipHealth > 0 && isdead == false)
				{
					level++;
					nextlevel();
					timer = 120;
					hello = 0;
					down = 0;
					whenfall = 5000000000;
					t5.visible = true;
					t6.visible = true;
					ShipHealth +=  20;
					ins.width +=  40;
				}

				if (timer==whenfall)
				{
					hello = Math.random() * 22;
					down = Math.random() * 22;
					timer = 0;

				}


				if (timer==240)
				{

					t5.visible = false;
					t6.visible = false;

					timer = 0;
				}

				if (timer==120)
				{

					countdown = 5;
				}

				if (timer==144)
				{

					countdown = 4;
				}

				if (timer==168)
				{

					countdown = 3;
				}


				if (timer==192)
				{

					countdown = 2;
				}

				if (timer==216)
				{

					countdown = 1;
				}



				//red bubble


				// hit test butter fly

				if (S.hitTestObject(B2))
				{
					B2.x = 15000;
					B2.y = -500;
					//(B2);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  15;
					ins.width -=  30;
					score +=  160;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(B3))
				{
					B3.x = 15000;
					B3.y = -500;
					//(B3);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  15;
					ins.width -=  30;
					score +=  160;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(B4))
				{
					B4.x = 15000;
					B4.y = -500;
					//(B4);

					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  15;
					ins.width -=  30;
					score +=  160;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(B5))
				{
					B5.x = 15000;
					B5.y = -500;
					//(B5);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  15;
					ins.width -=  30;
					score +=  160;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(B6))
				{
					B6.x = 15000;
					B6.y = -500;
					//(B6);

					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  15;
					ins.width -=  30;
					score +=  160;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(B7))
				{
					B7.x = 15000;
					B7.y = -500;
					//(B7);

					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  15;
					ins.width -=  30;
					score +=  160;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(B8))
				{
					B8.x = 15000;
					B8.y = -500;
					//(B8);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  15;
					ins.width -=  30;
					score +=  160;
					Kamikazi.play(0);
				}

				// hit test bee path

				if (S.hitTestObject(p))
				{

					p.x = 15000;
					p.y = -500;
					//(p);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  10;
					ins.width -=  20;
					score +=  50;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(p2))
				{

					p2.x = 15000;
					p2.y = -500;
					//(p2);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  10;
					ins.width -=  20;
					score +=  50;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(p3))
				{

					p3.x = 15000;
					p3.y = -500;
					//(p3);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);
					ShipHealth -=  10;
					ins.width -=  20;
					score +=  50;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(p4))
				{

					p4.x = 15000;
					p4.y = -500;
					//(p4);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);
					ShipHealth -=  10;
					ins.width -=  20;
					score +=  50;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(p5))
				{

					p5.x = 15000;
					p5.y = -500;
					//(p5);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);
					ShipHealth -=  10;
					ins.width -=  20;
					score +=  50;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(p6))
				{

					p6.x = 15000;
					p6.y = -500;
					//(p6);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);
					ShipHealth -=  10;
					ins.width -=  20;
					score +=  50;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(p7))
				{

					p7.x = 15000;
					p7.y = -500;
					//(p7);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);
					ShipHealth -=  10;
					ins.width -=  20;
					score +=  50;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(p8))
				{

					p8.x = 15000;
					p8.y = -500;
					//(p8);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);
					ShipHealth -=  10;
					ins.width -=  20;
					score +=  50;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(p9))
				{

					p9.x = 15000;
					p9.y = -500;
					//(p9);
					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);
					ShipHealth -=  10;
					ins.width -=  20;
					score +=  50;
					Kamikazi.play(0);
				}



				if (S.hitTestObject(SA))
				{

					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  25;
					ins.width -=  50;
					SAo = 1;
					Kamikazi.play(0);

				}
				if (S.hitTestObject(SA2))
				{

					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  25;
					ins.width -=  50;
					SAo2 = 1;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(SA3))
				{

					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  25;
					ins.width -=  50;
					SAo3 = 1;
					Kamikazi.play(0);
				}
				if (S.hitTestObject(SA4))
				{

					exp69.x = S.x;
					exp69.y = S.y;
					exp69.gotoAndPlay(1);

					ShipHealth -=  25;
					ins.width -=  50;
					SAo4 = 1;
					Kamikazi.play(0);
				}


				/////////////////


				//bullet alien hittest butter fly
				if (b.hitTestObject(B2))
				{
					B2.x = 1500;
					//(B2);
					expTempX = b.x;
					expTempY = b.y;
					b.y = 500;
					exp.x = expTempX;
					exp.y = expTempY - 20;
					exp.gotoAndPlay(1);

					speed = 0;
					score +=  160;
					ButterDie.play(0);


				}
				if (b.hitTestObject(B3))
				{
					B3.x = 1500;
					//(B3);
					exp2TempX = b.x;
					exp2TempY = b.y;
					b.y = 500;
					exp2.x = exp2TempX;
					exp2.y = exp2TempY - 20;
					exp2.gotoAndPlay(1);
					speed = 0;
					score +=  160;
					ButterDie.play(0);
				}
				if (b.hitTestObject(B4))
				{
					ButterDie.play(0);
					B4.x = 1500;
					//(B4);
					exp3TempX = b.x;
					exp3TempY = b.y;
					b.y = 500;
					exp3.x = exp3TempX;
					exp3.y = exp3TempY - 20;
					exp3.gotoAndPlay(1);
					speed = 0;
					score +=  160;
				}
				if (b.hitTestObject(B5))
				{
					B5.x = 1500;
					//(B5);
					exp4TempX = b.x;
					exp4TempY = b.y;
					b.y = 500;
					exp4.x = exp4TempX;
					exp4.y = exp4TempY - 20;
					exp4.gotoAndPlay(1);
					speed = 0;
					score +=  160;
					ButterDie.play(0);
				}
				if (b.hitTestObject(B6))
				{
					B6.x = 1500;
					//(B6);
					exp5TempX = b.x;
					exp5TempY = b.y;
					b.y = 500;
					exp5.x = exp5TempX;
					exp5.y = exp5TempY - 20;
					exp5.gotoAndPlay(1);
					speed = 0;
					score +=  160;
					ButterDie.play(0);
				}
				if (b.hitTestObject(B7))
				{
					B7.x = 1500;
					//(B7);
					exp6TempX = b.x;
					exp6TempY = b.y;
					b.y = 500;
					exp6.x = exp6TempX;
					exp6.y = exp6TempY - 20;
					exp6.gotoAndPlay(1);
					speed = 0;
					score +=  160;
					ButterDie.play(0);
				}
				if (b.hitTestObject(B8))
				{
					B8.x = 1500;
					//(B8);
					exp7TempX = b.x;
					exp7TempY = b.y;
					b.y = 500;
					exp7.x = exp7TempX;
					exp7.y = exp7TempY - 20;
					exp7.gotoAndPlay(1);
					speed = 0;
					score +=  160;
					ButterDie.play(0);
				}
				////
				//bullet alien hittest bee


				if (b.hitTestObject(p))
				{
					p.x = 1500;
					//(p);
					exp8TempX = b.x;
					exp8TempY = b.y;
					b.y = 500;
					exp8.x = exp8TempX;
					exp8.y = exp8TempY - 20;
					exp8.gotoAndPlay(1);
					speed = 0;
					score +=  50;
					BeeDie.play(0);

				}
				if (b.hitTestObject(p2))
				{
					p2.x = 1500;
					//(p2);
					exp9TempX = b.x;
					exp9TempY = b.y;
					b.y = 500;
					exp9.x = exp9TempX;
					exp9.y = exp9TempY - 20;
					exp9.gotoAndPlay(1);
					speed = 0;
					score +=  50;
					BeeDie.play(0);
				}
				if (b.hitTestObject(p3))
				{
					p3.x = 1500;
					//(p3);
					exp10TempX = b.x;
					exp10TempY = b.y;
					b.y = 500;
					exp10.x = exp10TempX;
					exp10.y = exp10TempY - 20;
					exp10.gotoAndPlay(1);
					speed = 0;
					score +=  50;
					BeeDie.play(0);
				}
				if (b.hitTestObject(p4))
				{
					p4.x = 1500;
					//(p4);
					exp11TempX = b.x;
					exp11TempY = b.y;
					b.y = 500;
					exp11.x = exp11TempX;
					exp11.y = exp11TempY - 20;
					exp11.gotoAndPlay(1);
					speed = 0;
					score +=  50;
					BeeDie.play(0);
				}
				if (b.hitTestObject(p5))
				{
					p5.x = 1500;
					//(p5);
					exp12TempX = b.x;
					exp12TempY = b.y;
					b.y = 500;
					exp12.x = exp12TempX;
					exp12.y = exp12TempY - 20;
					exp12.gotoAndPlay(1);
					speed = 0;
					score +=  50;
					BeeDie.play(0);
				}
				if (b.hitTestObject(p6))
				{
					p6.x = 1500;
					//(p6);
					exp13TempX = b.x;
					exp13TempY = b.y;
					b.y = 500;
					exp13.x = exp13TempX;
					exp13.y = exp13TempY - 20;
					exp13.gotoAndPlay(1);
					speed = 0;
					score +=  50;
					BeeDie.play(0);
				}
				if (b.hitTestObject(p7))
				{
					p7.x = 1500;
					//(p7);
					exp14TempX = b.x;
					exp14TempY = b.y;
					b.y = 500;
					exp14.x = exp14TempX;
					exp14.y = exp14TempY - 20;
					exp14.gotoAndPlay(1);
					speed = 0;
					score +=  50;
					BeeDie.play(0);
				}
				if (b.hitTestObject(p8))
				{
					p8.x = 1500;
					//(p8);
					exp15TempX = b.x;
					exp15TempY = b.y;
					b.y = 500;
					exp15.x = exp15TempX;
					exp15.y = exp15TempY - 20;
					exp15.gotoAndPlay(1);
					speed = 0;
					score +=  50;
					BeeDie.play(0);
				}
				if (b.hitTestObject(p9))
				{
					p9.x = 1500;
					//(p9);
					exp16TempX = b.x;
					exp16TempY = b.y;
					b.y = 500;
					exp16.x = exp16TempX;
					exp16.y = exp16TempY - 20;
					exp16.gotoAndPlay(1);
					speed = 0;
					score +=  50;
					BeeDie.play(0);
				}




				////////////////////////
				//Sucker Alien Fall

				if (SAo == 3)
				{
					if (down>=6.5&&down<=7&&SAPlay==false)
					{
						SAPlay = true;
						SA.gotoAndPlay(2);

						SArunonce = true;
					}
					if (SA.currentFrame == 1 && SAPlay == true)
					{
						SAPlay = false;
					}

					if (SA.currentFrame == 1 && SAPlay == false && SArunonce == true)
					{
						SA.gotoAndPlay(135);
						SArunonce = false;
					}
				}


				if (SAo == 2)
				{
					if (down>=6&&down<=7&&SAPlay==false)
					{
						SAPlay = true;
						SA.gotoAndPlay(69);

						SArunonce = true;
					}
					if (SA.currentFrame == 68 && SAPlay == true)
					{
						SAPlay = false;
					}

					if (SA.currentFrame == 68 && SAPlay == false && SArunonce == true)
					{
						SA.gotoAndPlay(156);
						SArunonce = false;
					}
				}

				if (b.hitTestObject(SA) && SAPlay == true)
				{

					SATemp = SA.currentFrame
					SATemp +=  66;

					SA.gotoAndPlay(SATemp);
					
					exp17TempX = b.x;
					exp17TempY = b.y;
					b.y = 500;
					speed = 0;
					SAo--;
					GreenDie.play(0);

				}

				if (b.hitTestObject(SA) && SAPlay == false)
				{


					SA.gotoAndPlay(155);
					exp17TempX = b.x;
					exp17TempY = b.y;
					b.y = 500;

					speed = 0;
					SAo--;
					GreenDie.play(0);

				}

				if (SAo==1)
				{
					exp17.x = exp17TempX;
					exp17.y = exp17TempY - 20;
					exp17.gotoAndPlay(1);
					SA.x = 1500;
					//(SA);
					SAo = 3;
					score +=  400;
				}


				////////////
				
				if (SAo2 == 2)
				{
					if (down>=5&&down<=6&&SA2Play==false)
					{
						SA2Play = true;
						SA2.gotoAndPlay(69);

						SA2runonce = true;
					}
					if (SA2.currentFrame == 68 && SA2Play == true)
					{
						SA2Play = false;
					}

					if (SA2.currentFrame == 68 && SA2Play == false && SA2runonce == true)
					{
						SA2.gotoAndPlay(156);
						SA2runonce = false;
					}
				}
				
				
				if (SAo2 == 3)
				{
					if (down>=5.5&&down<=6&&SA2Play==false)
					{
						SA2Play = true;
						SA2.gotoAndPlay(2);

						SA2runonce = true;
					}
					if (SA2.currentFrame == 1 && SA2Play == true)
					{
						SA2Play = false;
					}

					if (SA2.currentFrame == 1 && SA2Play == false && SA2runonce == true)
					{
						SA2.gotoAndPlay(135);
						SA2runonce = false;
					}
				}

				


				if (b.hitTestObject(SA2) && SA2Play == true)
				{

					SA2Temp = SA2.currentFrame;

					SA2Temp +=  66;

					SA2.gotoAndPlay(SA2Temp);

					exp18TempX = b.x;
					exp18TempY = b.y;
					b.y = 500;
					speed = 0;
					SAo2--;
					GreenDie.play(0);

				}

				if (b.hitTestObject(SA2) && SA2Play == false)
				{


					SA2.gotoAndPlay(155);

					exp18TempX = b.x;
					exp18TempY = b.y;
					b.y = 500;

					speed = 0;
					SAo2--;
					GreenDie.play(0);

				}

				if (SAo2==1)
				{
					exp18.x = exp18TempX;
					exp18.y = exp18TempY - 20;
					exp18.gotoAndPlay(1);
					SA2.x = 1500;
					//(SA2);
					SAo2 = 3;
					score +=  400;
				}

				///////////

				if (SAo3 == 3)
				{
					if (down>=4.5&&down<=5&&SA3Play==false)
					{
						SA3Play = true;
						SA3.gotoAndPlay(2);

						SA3runonce = true;
					}
					if (SA3.currentFrame == 1 && SA3Play == true)
					{
						SA3Play = false;
					}

					if (SA3.currentFrame == 1 && SA3Play == false && SA3runonce == true)
					{
						SA3.gotoAndPlay(135);
						SA3runonce = false;
					}
				}

				if (SAo3 == 2)
				{
					if (down>=4&&down<=5&&SA3Play==false)
					{
						SA3Play = true;
						SA3.gotoAndPlay(69);

						SA3runonce = true;
					}
					if (SA3.currentFrame == 68 && SA3Play == true)
					{
						SA3Play = false;
					}

					if (SA3.currentFrame == 68 && SA3Play == false && SA3runonce == true)
					{
						SA3.gotoAndPlay(156);
						SA3runonce = false;
					}
				}


				if (b.hitTestObject(SA3) && SA3Play == true)
				{

					SA3Temp = SA3.currentFrame;

					SA3Temp +=  66;

					SA3.gotoAndPlay(SA3Temp);


					exp19TempX = b.x;
					exp19TempY = b.y;
					b.y = 500;
					speed = 0;
					SAo3--;
					GreenDie.play(0);

				}

				if (b.hitTestObject(SA3) && SA3Play == false)
				{


					SA3.gotoAndPlay(155);

					exp19TempX = b.x;
					exp19TempY = b.y;
					b.y = 500;

					speed = 0;
					SAo3--;
					GreenDie.play(0);

				}

				if (SAo3==1)
				{
					exp19.x = exp19TempX;
					exp19.y = exp19TempY - 20;
					exp19.gotoAndPlay(1);
					SA3.x = 1500;
					//(SA3);
					SAo3 = 3;
					score +=  400;
				}
				//////////////////

				if (SAo4 == 3)
				{
					if (down>=3.5&&down<=4&&SA4Play==false)
					{
						SA4Play = true;
						SA4.gotoAndPlay(2);

						SA4runonce = true;
					}
					if (SA4.currentFrame == 1 && SA4Play == true)
					{
						SA4Play = false;
					}

					if (SA4.currentFrame == 1 && SA4Play == false && SA4runonce == true)
					{
						SA4.gotoAndPlay(135);
						SA4runonce = false;
					}
				}

				if (SAo4 == 2)
				{
					if (down>=3&&down<=4&&SA4Play==false)
					{
						SA4Play = true;
						SA4.gotoAndPlay(69);

						SA4runonce = true;
					}
					if (SA4.currentFrame == 68 && SA4Play == true)
					{
						SA4Play = false;
					}

					if (SA4.currentFrame == 68 && SA4Play == false && SA4runonce == true)
					{
						SA4.gotoAndPlay(156);
						SA4runonce = false;
					}
				}


				if (b.hitTestObject(SA4) && SA4Play == true)
				{

					SA4Temp = SA4.currentFrame;

					SA4Temp +=  66;

					SA4.gotoAndPlay(SA4Temp);
					
					exp20TempX = b.x;
					exp20TempY = b.y;

					b.y = 500;
					speed = 0;
					SAo4--;
					GreenDie.play(0);

				}

				if (b.hitTestObject(SA4) && SA4Play == false)
				{


					SA4.gotoAndPlay(155);

					exp20TempX = b.x;
					exp20TempY = b.y;
					b.y = 500;

					speed = 0;
					SAo4--;
					GreenDie.play(0);

				}

				if (SAo4==1)
				{
					exp20.x = exp20TempX;
					exp20.y = exp20TempY - 20;
					exp20.gotoAndPlay(1);
					SA4.x = 1500;
					//(SA4);
					SAo4 = 3;
					score +=  400;
				}

				///////////


				if (hello>=7&&hello<=8&&pPlay==false)
				{
					pPlay = true;

					p.gotoAndPlay(2);
					runonce = true;

					//p.play();
					pPlay = true;

				}
				if (down>=7.5&&down<=8&&pPlay==false)
				{
					pPlay = true;
					p.gotoAndPlay(74);

					runonce = true;
				}
				if (p.currentFrame == 1 && pPlay == true)
				{
					pPlay = false;

				}


				if (p.currentFrame == 1 && pPlay == false && runonce == true)
				{
					p.gotoAndPlay(137);
					runonce = false;
				}

				////////////////////////////////

				if (hello>=8&&hello<=9&&p2Play==false)
				{
					p2Play = true;


					p2.gotoAndPlay(2);
					runonce2 = true;

				}
				if (down>=8.5&&down<=9&&p2Play==false)
				{
					p2Play = true;
					p2.gotoAndPlay(74);


					runonce2 = true;

				}
				if (p2.currentFrame == 1 && p2Play == true)
				{
					p2Play = false;
				}

				if (p2.currentFrame == 1 && p2Play == false && runonce2 == true)
				{
					p2.gotoAndPlay(137);
					runonce2 = false;
				}


				////////////////////////////

				if (hello>=9&&hello<=10&&p3Play==false)
				{
					p3Play = true;


					p3.gotoAndPlay(2);
					runonce3 = true;
				}
				if (down>=9.5&&down<=10&&p3Play==false)
				{
					p3Play = true;
					p3.gotoAndPlay(74);


					runonce3 = true;

				}
				if (p3.currentFrame == 1 && p3Play == true)
				{
					p3Play = false;
				}

				if (p3.currentFrame == 1 && p3Play == false && runonce3 == true)
				{
					p3.gotoAndPlay(137);
					runonce3 = false;
				}


				////////////////////////////////////

				if (hello>=10&&hello<=11&&p4Play==false)
				{
					p4Play = true;


					p4.gotoAndPlay(2);
					runonce4 = true;
				}

				if (down>=10.5&&down<=11&&p4Play==false)
				{
					p4Play = true;
					p4.gotoAndPlay(74);


					runonce4 = true;
				}
				if (p4.currentFrame == 1 && p4Play == true)
				{
					p4Play = false;
				}

				if (p4.currentFrame == 1 && p4Play == false && runonce4 == true)
				{
					p4.gotoAndPlay(137);
					runonce4 = false;
				}


				//////////////////////////////////////

				if (hello>=11&&hello<=12&&p5Play==false)
				{
					p5Play = true;

					p5.play();
					p5.gotoAndPlay(2);
					runonce5 = true;
				}

				if (down>=11.5&&down<=12&&p5Play==false)
				{
					p5Play = true;
					p5.gotoAndPlay(74);


					runonce5 = true;
				}
				if (p5.currentFrame == 1 && p5Play == true)
				{
					p5Play = false;
				}


				if (p5.currentFrame == 1 && p5Play == false && runonce5 == true)
				{
					p5.gotoAndPlay(137);
					runonce5 = false;
				}


				///////////////////////////////////////

				if (hello>=12&&hello<=13&&p6Play==false)
				{
					p6Play = true;


					p6.gotoAndPlay(2);
					runonce6 = true;
				}
				if (down>=12.5&&down<=13&&p6Play==false)
				{
					p6Play = true;
					p6.gotoAndPlay(74);


					runonce6 = true;
				}
				if (p6.currentFrame == 1 && p6Play == true)
				{
					p6Play = false;
				}


				if (p6.currentFrame == 1 && p6Play == false && runonce6 == true)
				{
					p6.gotoAndPlay(137);
					runonce6 = false;
				}


				//////////////////////////////////////


				if (hello>=13&&hello<=14&&p7Play==false)
				{
					p7Play = true;


					p7.gotoAndPlay(2);
					runonce7 = true;
				}
				if (down>=13.5&&down<=14&&p7Play==false)
				{
					p7Play = true;
					p7.gotoAndPlay(74);


					runonce7 = true;
				}
				if (p7.currentFrame == 1 && p7Play == true)
				{
					p7Play = false;
				}


				if (p7.currentFrame == 1 && p7Play == false && runonce7 == true)
				{
					p7.gotoAndPlay(137);
					runonce7 = false;
				}


				/////////////////////////////////////////
				if (hello>=14&&hello<=15&&p8Play==false)
				{
					p8Play = true;


					p8.gotoAndPlay(2);
					runonce8 = true;
				}
				if (down>=14.5&&down<=15&&p8Play==false)
				{
					p8Play = true;
					p8.gotoAndPlay(74);


					runonce8 = true;
				}
				if (p8.currentFrame == 1 && p8Play == true)
				{
					p8Play = false;
				}
				if (p8.currentFrame == 1 && p8Play == false && runonce8 == true)
				{
					p8.gotoAndPlay(137);
					runonce8 = false;
				}


				//////////////////////////////////

				if (hello>=15&&hello<=16&&p9Play==false)
				{
					p9Play = true;
					p9.scaleX = .8;


					p9.gotoAndPlay(2);
					runonce9 = true;
				}
				if (hello>=15.5&&hello<=16.5&&p9Play==false)
				{


					p9Play = true;
					p9.scaleX = -.8;
					p9.play();
					p9.gotoAndPlay(2);
					runonce9 = true;

				}

				if (down>=15.5&&down<=16&&p9Play==false)
				{
					p9Play = true;
					p9.gotoAndPlay(74);


					runonce9 = true;


				}
				if (p9.currentFrame == 1 && p9Play == true)
				{
					p9Play = false;
				}


				if (p9.currentFrame == 1 && p9Play == false && runonce9 == true)
				{
					p9.gotoAndPlay(137);
					runonce9 = false;
				}

				//////////////////////////////////////////////


				if (hello>=14&&hello<=15&&B2Play==false)
				{
					B2Play = true;
					B2.gotoAndPlay(2);
					B2.play();
					Brunonce = true;
				}
				if (down>=14.5&&down<=15&&B2Play==false)
				{
					B2Play = true;
					B2.gotoAndPlay(63);
					Brunonce = true;

				}
				if (B2.currentFrame == 1 && B2Play == true)
				{
					B2Play = false;
				}


				if (B2.currentFrame == 1 && B2Play == false && Brunonce == true)
				{
					B2.gotoAndPlay(124);
					Brunonce = false;
				}




				///////////////////


				if (hello>=15&&hello<=16&&B3Play==false)
				{
					B3Play = true;
					Brunonce2 = true;

					B3.gotoAndPlay(2);
					B3.play();

				}
				if (down>=15.5&&down<=16&&B3Play==false)
				{
					B3Play = true;
					B3.gotoAndPlay(63);
					Brunonce2 = true;

				}
				if (B3.currentFrame == 1 && B3Play == true)
				{
					B3Play = false;
				}


				if (B3.currentFrame == 1 && B3Play == false && Brunonce2 == true)
				{
					B3.gotoAndPlay(124);
					Brunonce2 = false;
				}


				///////////////////



				if (hello>=16&&hello<=17&&B4Play==false)
				{
					Brunonce3 = true;
					B4Play = true;
					B4.gotoAndPlay(2);
					B4.gotoAndPlay(2);
					B4.play();

				}
				if (down>=16.5&&down<=17&&B4Play==false)
				{
					B4Play = true;
					B4.gotoAndPlay(63);
					Brunonce3 = true;

				}
				if (B4.currentFrame == 1 && B4Play == true)
				{
					B4Play = false;
				}


				if (B4.currentFrame == 1 && B4Play == false && Brunonce3 == true)
				{
					B4.gotoAndPlay(124);
					Brunonce3 = false;
				}




				///////////////////

				if (hello>=17&&hello<=18&&B5Play==false)
				{
					B5Play = true;
					B5.gotoAndPlay(2);
					B5.play();
					Brunonce4 = true;
				}
				if (down>=17.5&&down<=18&&B5Play==false)
				{
					B5Play = true;
					B5.gotoAndPlay(63);
					Brunonce4 = true;

				}
				if (B5.currentFrame == 1 && B5Play == true)
				{
					B5Play = false;
				}



				if (B5.currentFrame == 1 && B5Play == false && Brunonce4 == true)
				{
					B5.gotoAndPlay(124);
					Brunonce4 = false;
				}




				///////////////////


				if (hello>=18&&hello<=19&&B6Play==false)
				{
					B6Play = true;
					Brunonce5 = true;
					B6.gotoAndPlay(2);
					B6.play();

				}
				if (down>=18.5&&down<=19&&B6Play==false)
				{
					B6Play = true;
					B6.gotoAndPlay(63);
					Brunonce5 = true;

				}
				if (B6.currentFrame == 1 && B6Play == true)
				{
					B6Play = false;
				}


				if (B6.currentFrame == 1 && B6Play == false && Brunonce5 == true)
				{
					B6.gotoAndPlay(124);
					Brunonce5 = false;
				}


				///////////////////

				if (hello>=19&&hello<=20&&B7Play==false)
				{
					B7Play = true;
					Brunonce6 = true;
					B7.gotoAndPlay(2);
					B7.play();

				}
				if (down>=19.5&&down<=20&&B7Play==false)
				{
					B7Play = true;
					B7.gotoAndPlay(63);
					Brunonce6 = true;

				}
				if (B7.currentFrame == 1 && B7Play == true)
				{
					B7Play = false;
				}

				if (B7.currentFrame == 1 && B7Play == false && Brunonce6 == true)
				{
					B7.gotoAndPlay(124);
					Brunonce6 = false;
				}




				///////////////////


				if (hello>=20&&hello<=21&&B8Play==false)
				{
					B8Play = true;
					Brunonce7 = true;
					B8.play();
					B8.gotoAndPlay(2);
				}
				if (down>=20.5&&down<=21&&B8Play==false)
				{
					B8Play = true;
					B8.gotoAndPlay(63);
					Brunonce7 = true;

				}
				if (B8.currentFrame == 1 && B8Play == true)
				{
					B8Play = false;
				}


				if (B8.currentFrame == 1 && B8Play == false && Brunonce7 == true)
				{
					B8.gotoAndPlay(124);
					Brunonce7 = false;
				}


				///////////////////


				movecan();
				movebul();
				delbul();


				for (var i:Number = 0; i<100; i++)
				{

					sArray[i].y +=  speedArray[i];
					if (sArray[i].y > 550)
					{
						sArray[i].x = Math.random() * 600 - 50;
						sArray[i].y = -30;

					}
				}
			}


			stage.addEventListener(KeyboardEvent.KEY_UP, uFun);
			function uFun(u:KeyboardEvent)
			{
				//dir = "stop";
				if (u.keyCode == 37)
				{
					dir = "stop";
				}

			}

			stage.addEventListener(KeyboardEvent.KEY_UP, qFun);
			function qFun(q:KeyboardEvent)
			{
				//dir2 = "stop";
				if (q.keyCode == 39)
				{
					dir2 = "stop";
				}

			}

			stage.addEventListener(KeyboardEvent.KEY_DOWN,B15Fun);
			function B15Fun(e:KeyboardEvent)
			{
				if (e.keyCode == 37)
				{
					dir = "left";
				}
			}


			stage.addEventListener(KeyboardEvent.KEY_DOWN,B25Fun);
			function B25Fun(j:KeyboardEvent)
			{
				if (j.keyCode == 39)
				{
					dir2 = "right";
				}
			}



			stage.addEventListener(KeyboardEvent.KEY_DOWN,B18Fun);
			function B18Fun(k:KeyboardEvent)
			{

				if (k.keyCode == 38 && b.y == 500)
				{

					b.visible = true;
					tempx = S.x;
					tempy = S.y - 30;
					b.x = tempx;
					b.y = tempy;
					speed = 15;
					ShootingSound.play(0);
				}


				if (k.keyCode == 32 && b.y == 500)
				{
					b.visible = true;
					tempx = S.x;
					tempy = S.y - 30;
					b.x = tempx;
					b.y = tempy;
					speed = 15;
					ShootingSound.play(0);
				}


			}


			t4.addEventListener(MouseEvent.CLICK, cheat);
			function cheat(e:MouseEvent)
			{

				if(ShipHealth != -420){
				ShipHealth = 50;
				ins.width = 100;
				}
			}



			startButt.addEventListener(MouseEvent.CLICK, startgame);
			function startgame(e:MouseEvent)
			{


				GL.visible = false;
				startsound.play(0);
				startButt.visible = false;
				t7.visible = false;
				t8.visible = false;
				t69.visible = false;

				ShipHealth = 50;
				countdown = 5;
				timer = 120;
				score = 0;
				level = 1;
				ins.width = 100;

				SA.gotoAndPlay(135);
				SA2.gotoAndPlay(135);
				SA3.gotoAndPlay(135);
				SA4.gotoAndPlay(135);


				S.x = 275;


				out.visible = true;
				ins.visible = true;



				t.visible = true;
				t2.visible = true;
				t3.visible = true;
				t4.visible = true;
				t5.visible = true;
				t6.visible = true;

				addChild(p);
				p.y = 150;
				p.x = 50;
				//p.width = 50;
				//p.height = 30;

				addChild(p2);
				p2.y = 150;
				p2.x = 100;
				//p2.width = 50;
				//p2.height = 30;

				addChild(p3);
				p3.y = 150;
				p3.x = 150;
				//p3.width = 50;
				//p3.height = 30;

				addChild(p4);
				p4.y = 150;
				p4.x = 200;
				//p4.width = 50;
				//p4.height = 30;

				addChild(p5);
				p5.y = 150;
				p5.x = 450;
				//p5.width = 50;
				//p5.height = 30;
				p5.scaleX = -.8;

				addChild(p6);
				p6.y = 150;
				p6.x = 500;
				//p6.width = 50;
				//p6.height = 30;
				p6.scaleX = -.8;

				addChild(p7);
				p7.y = 150;
				p7.x = 400;
				//p7.width = 50;
				//p7.height = 30;
				p7.scaleX = -.8;

				addChild(p8);
				p8.y = 150;
				p8.x = 350;
				//p8.width = 50;
				//p8.height = 30;
				p8.scaleX = -.8;

				addChild(p9);
				p9.y = 150;
				p9.x = 275;
				//p9.width = 50;
				//p9.height = 30;
				p9.scaleX = -.8;

				//////////////////////////////////////
				//Butter fly Path

				addChild(B2);
				B2.y = 90;
				B2.x = 60;
				//B2.width = 50;
				//B2.height = 30;

				addChild(B3);
				B3.y = 90;
				B3.x = 130;
				//B3.width = 50;
				//B3.height = 30;

				addChild(B4);
				B4.y = 90;
				B4.x = 200;
				//B4.width = 50;
				//B4.height = 30;

				addChild(B5);
				B5.y = 90;
				B5.x = 275;
				//B5.width = 50;
				//B5.height = 30;
				B5.scaleX = -.8;

				addChild(B6);
				B6.y = 90;
				B6.x = 350;
				//B6.width = 50;
				//B6.height = 30;
				B6.scaleX = -.8;

				addChild(B7);
				B7.y = 90;
				B7.x = 425;
				//B7.width = 50;
				//B7.height = 30;
				B7.scaleX = -.8;

				addChild(B8);
				B8.y = 90;
				B8.x = 500;
				//B8.width = 50;
				//B8.height = 30;
				B8.scaleX = -.8;

				/////////////

				addChild(SA);
				SA.y = 30;
				SA.x = 150;
				//SA.width = 70;
				//SA.height = 50;

				addChild(SA2);
				SA2.y = 30;
				SA2.x = 150 + 80;
				//SA2.width = 70;
				//SA2.height = 50;

				addChild(SA3);
				SA3.y = 30;
				SA3.x = 150 + 160;
				//SA3.width = 70;
				//SA3.height = 50;

				addChild(SA4);
				SA4.y = 30;
				SA4.x = 150 + 160 + 80;
				//SA4.width = 70;
				//SA4.height = 50;


				p.gotoAndPlay(140);
				p2.gotoAndPlay(140);
				p3.gotoAndPlay(140);
				p4.gotoAndPlay(140);
				p5.gotoAndPlay(140);
				p6.gotoAndPlay(140);
				p7.gotoAndPlay(140);
				p8.gotoAndPlay(140);
				p9.gotoAndPlay(140);

				B2.gotoAndPlay(124);
				B3.gotoAndPlay(124);
				B4.gotoAndPlay(124);
				B5.gotoAndPlay(124);
				B6.gotoAndPlay(124);
				B7.gotoAndPlay(124);
				B8.gotoAndPlay(124);


			}


			//Functions



			function nextlevel()
			{

				SA.gotoAndPlay(135);
				SA2.gotoAndPlay(135);
				SA3.gotoAndPlay(135);
				SA4.gotoAndPlay(135);

				startsound.play(0);

				runonce = true;
				runonce2 = true;
				runonce3 = true;
				runonce4 = true;
				runonce5 = true;
				runonce6 = true;
				runonce7 = true;
				runonce8 = true;
				runonce9 = true;
				runonce10 = true;
				runonce11 = true;
				runonce12 = true;
				runonce13 = true;
				runonce14 = true;
				runonce15 = true;
				runonce16 = true;
				runonce17 = true;

				SArunonce = true;
				SA2runonce = true;
				SA3runonce = true;
				SA4runonce = true;
				SAPlay = false;
				SA2Play = false;
				SA3Play = false;
				SA4Play = false;

				pPlay = false;
				p2Play = false;
				p3Play = false;
				p4Play = false;
				p5Play = false;
				p6Play = false;
				p7Play = false;
				p8Play = false;
				p9Play = false;
				p10Play = false;


				B2Play = false;
				B3Play = false;
				B4Play = false;
				B5Play = false;
				B6Play = false;
				B7Play = false;
				B8Play = false;

				Brunonce = true;
				Brunonce2 = true;
				Brunonce3 = true;
				Brunonce4 = true;
				Brunonce5 = true;
				Brunonce6 = true;
				Brunonce7 = true;
				Brunonce8 = true;


				//addChild(p);
				p.y = 150;
				p.x = 50;


				//addChild(p2);
				p2.y = 150;
				p2.x = 100;

				//addChild(p3);
				p3.y = 150;
				p3.x = 150;


				///addChild(p4);
				p4.y = 150;
				p4.x = 200;

				addChild(p5);
				p5.y = 150;
				p5.x = 450;


				addChild(p6);
				p6.y = 150;
				p6.x = 500;

				addChild(p7);
				p7.y = 150;
				p7.x = 400;


				addChild(p8);
				p8.y = 150;
				p8.x = 350;


				addChild(p9);
				p9.y = 150;
				p9.x = 275;

				//////////////////////////////////////
				//Butter fly Path
				addChild(B2);
				B2.y = 90;
				B2.x = 60;

				addChild(B3);
				B3.y = 90;
				B3.x = 130;


				addChild(B4);
				B4.y = 90;
				B4.x = 200;

				addChild(B5);
				B5.y = 90;
				B5.x = 275;

				addChild(B6);
				B6.y = 90;
				B6.x = 350;

				addChild(B7);
				B7.y = 90;
				B7.x = 425;


				addChild(B8);
				B8.y = 90;
				B8.x = 500;


				/////////////

				addChild(SA);
				SA.y = 30;
				SA.x = 150;


				addChild(SA2);
				SA2.y = 30;
				SA2.x = 150 + 80;


				addChild(SA3);
				SA3.y = 30;
				SA3.x = 150 + 160;


				addChild(SA4);
				SA4.y = 30;
				SA4.x = 150 + 160 + 80;

				p.gotoAndPlay(140);
				p2.gotoAndPlay(140);
				p3.gotoAndPlay(140);
				p4.gotoAndPlay(140);
				p5.gotoAndPlay(140);
				p6.gotoAndPlay(140);
				p7.gotoAndPlay(140);
				p8.gotoAndPlay(140);
				p9.gotoAndPlay(140);

				B2.gotoAndPlay(124);
				B3.gotoAndPlay(124);
				B4.gotoAndPlay(124);
				B5.gotoAndPlay(124);
				B6.gotoAndPlay(124);
				B7.gotoAndPlay(124);
				B8.gotoAndPlay(124);

			}


			function EndGame()
			{
				S.x = 10000;
				//over.visible = false

				startButt.visible = true;
				isdead = false;
				justdoitonce = false;
				ins.width = 0;

				t.visible = false;
				t2.visible = false;
				t3.visible = false;
				t4.visible = false;
				t5.visible = false;

				out.visible = false;
				ins.visible = false;

				GL.visible = true;
				t7.visible = true;
				t8.visible = true;
				t69.visible = true;

				runonce = true;
				runonce2 = true;
				runonce3 = true;
				runonce4 = true;
				runonce5 = true;
				runonce6 = true;
				runonce7 = true;
				runonce8 = true;
				runonce9 = true;
				runonce10 = true;
				runonce11 = true;
				runonce12 = true;
				runonce13 = true;
				runonce14 = true;
				runonce15 = true;
				runonce16 = true;
				runonce17 = true;

				SAPlay = false;
				SA2Play = false;
				SA3Play = false;
				SA4Play = false;

				SArunonce = true;
				SA2runonce = true;
				SA3runonce = true;
				SA4runonce = true;

				pPlay = false;
				p2Play = false;
				p3Play = false;
				p4Play = false;
				p5Play = false;
				p6Play = false;
				p7Play = false;
				p8Play = false;
				p9Play = false;
				p10Play = false;


				B2Play = false;
				B3Play = false;
				B4Play = false;
				B5Play = false;
				B6Play = false;
				B7Play = false;
				B8Play = false;

				Brunonce = true;
				Brunonce2 = true;
				Brunonce3 = true;
				Brunonce4 = true;
				Brunonce5 = true;
				Brunonce6 = true;
				Brunonce7 = true;
				Brunonce8 = true;

				B2.x = 15000;
				B3.x = 15000;
				B4.x = 15000;
				B5.x = 15000;
				B6.x = 15000;
				B7.x = 15000;
				B8.x = 15000;

				p.x = 15000;
				p2.x = 15000;
				p3.x = 15000;
				p4.x = 15000;
				p5.x = 15000;
				p6.x = 15000;
				p7.x = 15000;
				p8.x = 15000;
				p9.x = 15000;

				SA.x = 15000;
				SA2.x = 15000;
				SA3.x = 15000;
				SA4.x = 15000;


			}


			function movebul()
			{
				b.y -=  speed;
			}


			function delbul()
			{

				if (b.y < 0)
				{

					b.y = 500;
					speed = 0;
				}
			}

			function movecan()
			{

				if (dir=="left"&&S.x>30)
				{
					S.x -=  12;
				}

				if (dir2=="right"&&S.x<520)
				{
					S.x +=  12;
				}
			}



		}
	}
}