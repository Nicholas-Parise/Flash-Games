package {

	import flash.display.MovieClip;

	import flash.events.Event;

	import flash.events.KeyboardEvent;




	public class AsteroidsCode extends MovieClip {

		public function AsteroidsCode() {


			//variables

			var s:Ship = new Ship();
			var dir:String="stop";

			var angle:Number=0;

			var i:Number=0;

			var xspeed:Number=0;
			var yspeed:Number=0;

			var xArray:Array = new Array();
			var yArray:Array = new Array();

			var lArray:Array = new Array();


			//load

			addChild(s);
			s.x=275;
			s.y=200;
			s.gotoAndStop(1);
			//events


			addEventListener(Event.ENTER_FRAME, mainFun);
			function mainFun(evt:Event) {

				moveLasers();


				if (dir=="right") {
					s.rotation+=5;
				}
				if (dir=="left") {
					s.rotation-=5;
				}

				if (dir=="forward") {
					if (s.currentFrame==1||s.currentFrame>6) {
						s.gotoAndPlay(2);
					}
					angle = (s.rotation -90)*Math.PI/180;
					xspeed+=Math.cos(angle)*.4;
					yspeed+=Math.sin(angle)*.4;
				}

				s.x+=xspeed;
				s.y+=yspeed;

				if (s.x>550) {
					s.x=0;
				}
				if (s.x<0) {
					s.x=550;
				}
				if (s.y>400) {
					s.y=0;
				}
				if (s.y<0) {
					s.y=400;

				}
			}




			stage.addEventListener(KeyboardEvent.KEY_DOWN,dFun);
			function dFun(evt:KeyboardEvent) {


				if (evt.keyCode==39) {
					dir="right";
				} else if (evt.keyCode == 37) {

					dir="left";
				} else if (evt.keyCode == 38) {

					dir="forward";

				} 
				
				if (evt.keyCode == 32) {

					var l:laser = new laser();
					lArray.push(l);
					addChild(lArray[lArray.length -1]);
					lArray[lArray.length-1].x=s.x;
					lArray[lArray.length-1].y=s.y;
					lArray[lArray.length-1].rotation=s.rotation;

					var temp:Number = (s.rotation -90)*Math.PI/180;
					xArray.push(Math.cos(temp)*25);
					yArray.push(Math.sin(temp)*25);


				}

			}



			stage.addEventListener(KeyboardEvent.KEY_UP,uFun);
			function uFun(evt:KeyboardEvent) {



				if (evt.keyCode==39) {
					dir="stop";
				} else if (evt.keyCode == 37) {
					dir="stop";
				} else if (evt.keyCode == 38) {
					dir="stop";
					s.gotoAndStop(1);
				}


			}



			function moveLasers():void {

				for (i=0; i<lArray.length; i++) {

					lArray[i].x+=xArray[i];
					lArray[i].y+=yArray[i];

				if(lArray[i].x > 550 || lArray[i].x <0 || lArray[i].y <0 || lArray[i].y > 400){
					
					removeChild(lArray[i])
				
					lArray.splice(i, 1);
					xArray.splice(i, 1);
					yArray.splice(i, 1);
					
					
					}
				
				}
			}




		}
	}
}  