package{
import flash.display.MovieClip;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.events.MouseEvent;
import flash.geom.ColorTransform;
import flash.utils.Timer
import flash.events.TimerEvent

public class BricksCode extends MovieClip {

public function BricksCode() {

var LScore:Number = 3;
var RScore:Number = 0;
var i:Number = 0
var J:Number = 0

var dir:String = "stop";

var sound1 = new PaddleSound();
var sound2 = new WallSound;
var sound3 = new DieSound;


/*
	var yspeed:Number = 0 
var xspeed:Number = 0
*/
	
	var disty:Number = 0 
	var distx:Number = 0

var speed:Number = 6;

var xspeed:Number = 0
var yspeed:Number = 0
	
	
	var p:Brick = new Brick();
addChild(p);

p.x =550/2;
p.y =390;
p.width = 70;
p.height = 12;
	
			var face10Color: ColorTransform = p.transform.colorTransform;
			face10Color.color = 0x66CCFF;
			p.transform.colorTransform = face10Color;
	
	//var sArray:Array = new Array();
var bArray:Array = new Array();
	var bArray2:Array = new Array();
	
	for (var j:Number = 0; j<5; j++){
	for (var i:Number = 0; i<11; i++){
	var b: Brick = new Brick();
	
bArray.push(b);
addChild(bArray[bArray.length -1]);

bArray[bArray.length - 1].width = 45
bArray[bArray.length - 1].height = 20
bArray[bArray.length - 1].x = i * 50 + 25;
bArray[bArray.length - 1].y = j*30 + 60;
	
	if (j == 0){
		var faceColor: ColorTransform = b.transform.colorTransform;
			faceColor.color = 0xFF0000;
			b.transform.colorTransform = faceColor;
		//Nicholas
		}
	
	
	if (j == 1){
		var face2Color: ColorTransform = b.transform.colorTransform;
			face2Color.color = 0xFF8000;
			b.transform.colorTransform = face2Color;
		}
	if (j == 2){
	
	var face3Color: ColorTransform = b.transform.colorTransform;
			face3Color.color = 0xFFFF00;
			b.transform.colorTransform = face3Color;
	}//Nicholas
	
	if(j == 3){
		var face4Color: ColorTransform = b.transform.colorTransform;
			face4Color.color = 0x00FF00;
			b.transform.colorTransform = face4Color;
		
		}
	
	
	if(j == 4){
		var face5Color: ColorTransform = b.transform.colorTransform;
			face5Color.color = 0x0000FF;
			b.transform.colorTransform = face5Color;
		}
	
	
	}}
	

	var ba: Brick = new Brick();


ba.x =100;
ba.y =200;
ba.width = 10;
ba.height = 10;
	
		var face9Color: ColorTransform = ba.transform.colorTransform;
			face9Color.color = 0xFFFFFF;
			ba.transform.colorTransform = face9Color;
	
	
	
	
	
	addEventListener(Event.ENTER_FRAME, mainFun);

function mainFun(e:Event) {
	//Nicholas
	ba.y += yspeed;
	ba.x += xspeed;
	
	tt.text = String(RScore);
tt.setTextFormat(tff);
	
	
	if(ba.x > 535 || ba.x <5){
		//Nicholas
		xspeed *= -1
		sound1.play(0);
	}
	
	
	if(ba.y < 0){
		
		yspeed *=  -1
		sound1.play(0);
		
		}
	
	
	
	for ( i= 0; i< bArray.length; i++) {
 if (ba.y < 220 && ba.y > 165 && bArray[i].hitTestObject(ba)) {
	//bottom row
	trace("hey la lal ogkrfgks");
	RScore += 1
	yspeed *= -1
	
	xspeed= (bArray[i].x - ba.x)/ba.height/3 * speed;
yspeed = 1 * Math.sqrt(speed*speed - yspeed * yspeed);

	
	
	
	}}
	
	
	for ( i= 0; i< bArray.length; i++) {
 if (ba.y < 180 && ba.y > 135 && bArray[i].hitTestObject(ba)) {
	//second row
	trace("hey la lal ogkrfgks");
	RScore += 2
	yspeed *= -1
	
	xspeed= (bArray[i].x - ba.x)/ba.height/3 * speed;
yspeed = 1 * Math.sqrt(speed*speed - yspeed * yspeed);
	}}
	
	
	
		for ( i= 0; i< bArray.length; i++) {
 if (ba.y < 140 && ba.y > 105 && bArray[i].hitTestObject(ba)) {
	//third row
	trace("hey la lal ogkrfgks");
	RScore += 3
	yspeed *= -1
	
	xspeed= (bArray[i].x - ba.x)/ba.height/3 * speed;
yspeed = 1 * Math.sqrt(speed*speed - yspeed * yspeed);
	}}
	
	
	
	for ( i= 0; i< bArray.length; i++) {
 if (ba.y < 110 && ba.y > 75 && bArray[i].hitTestObject(ba)) {
	//fourth row
	trace("hey la lal ogkrfgks");
	RScore += 4
	yspeed *= -1
	
	xspeed= (bArray[i].x - ba.x)/ba.height/3 * speed;
yspeed = 1 * Math.sqrt(speed*speed - yspeed * yspeed);
	}}
	
	
	
	for ( i= 0; i< bArray.length; i++) {
 if (ba.y < 80 && ba.y > 45 && bArray[i].hitTestObject(ba)) {
	//fifth row
	trace("hey la lal ogkrfgks");
	RScore += 5
	yspeed *= -1
	
	xspeed= (bArray[i].x - ba.x)/ba.height/3 * speed;
yspeed = 1 * Math.sqrt(speed*speed - yspeed * yspeed);
	}}
	
	
	if (p.hitTestObject(ba)){
		
		//yspeed *= -1; 
		
		sound1.play(0);
		
xspeed= (ba.x - p.x)/p.width * speed;
yspeed =-1 * Math.sqrt(speed*speed - yspeed * yspeed);
		
	}
		
	for ( i= 0; i< bArray.length; i++) {
 if (bArray[i].hitTestObject(ba)) {

//Nicholas

sound2.play(0);

bArray[i].x += 700;

//xspeed= (b.x - ba.x)/b.height * speed;
//yspeed =-1*Math.sqrt(speed*speed - xspeed * yspeed);

tt.text = String(RScore);
tt.setTextFormat(tff);
// count++;
 break;
 }
 }
		
		if(ba.y > 450){
			
			LScore--;
			t.text = String(LScore);
t.setTextFormat(tf);
			
	ba.x = 275;
ba.y = 200;
		
		sound3.play(0);
		
		}
			
			
		
		
		//Lv 2
		if (RScore > 160 && RScore < 170 && LScore >0){
			
			
		ba.x =100;
		ba.y =200;
		
			for (var j:Number = 0; j<5; j++){
	for (var i:Number = 0; i<11; i++){
	var b: Brick = new Brick();
//sArray[i] = b
bArray.push(b);
//addChild(sArray[i]);
addChild(bArray[bArray.length -1]);

//Nicholas

bArray[bArray.length - 1].width = 45
bArray[bArray.length - 1].height = 20
bArray[bArray.length - 1].x = i * 50 + 25;
bArray[bArray.length - 1].y = j*30 + 60;
	
	if (j == 0){
		var faceColor: ColorTransform = b.transform.colorTransform;
			faceColor.color = 0xFF0000;
			b.transform.colorTransform = faceColor;
		//Nicholas
		}
	
	
	if (j == 1){
		var face2Color: ColorTransform = b.transform.colorTransform;
			face2Color.color = 0xFF8000;
			b.transform.colorTransform = face2Color;
		}
	if (j == 2){
	
	var face3Color: ColorTransform = b.transform.colorTransform;
			face3Color.color = 0xFFFF00;
			b.transform.colorTransform = face3Color;
	}//Nicholas
	
	if(j == 3){
		var face4Color: ColorTransform = b.transform.colorTransform;
			face4Color.color = 0x00FF00;
			b.transform.colorTransform = face4Color;
		
		}
	
	
	if(j == 4){
		var face5Color: ColorTransform = b.transform.colorTransform;
			face5Color.color = 0x0000FF;
			b.transform.colorTransform = face5Color;
			}
	
	
	}}}
		///////
		
		//Lv 3
		
		if (RScore == 330 && LScore >0){
			
			
		ba.x =100;
		ba.y =200;
		
			for (var j:Number = 0; j<5; j++){
	for (var i:Number = 0; i<11; i++){
	var b: Brick = new Brick();
//sArray[i] = b
bArray.push(b);
//addChild(sArray[i]);
addChild(bArray[bArray.length -1]);

//Nicholas

bArray[bArray.length - 1].width = 45
bArray[bArray.length - 1].height = 20
bArray[bArray.length - 1].x = i * 50 + 25;
bArray[bArray.length - 1].y = j*30 + 60;
	
	if (j == 0){
		var faceColor: ColorTransform = b.transform.colorTransform;
			faceColor.color = 0xFF0000;
			b.transform.colorTransform = faceColor;
		//Nicholas
		}
	
	
	if (j == 1){
		var face2Color: ColorTransform = b.transform.colorTransform;
			face2Color.color = 0xFF8000;
			b.transform.colorTransform = face2Color;
		}
	if (j == 2){
	
	var face3Color: ColorTransform = b.transform.colorTransform;
			face3Color.color = 0xFFFF00;
			b.transform.colorTransform = face3Color;
	}//Nicholas
	
	if(j == 3){
		var face4Color: ColorTransform = b.transform.colorTransform;
			face4Color.color = 0x00FF00;
			b.transform.colorTransform = face4Color;
		
		}
	
	
	if(j == 4){
		var face5Color: ColorTransform = b.transform.colorTransform;
			face5Color.color = 0x0000FF;
			b.transform.colorTransform = face5Color;
		}
	
	}}}
		
		//Lv 4
		if (RScore == 495 && LScore >0){
			
			
		ba.x =100;
		ba.y =200;
		
			for (var j:Number = 0; j<5; j++){
	for (var i:Number = 0; i<11; i++){
	var b: Brick = new Brick();
//sArray[i] = b
bArray.push(b);
//addChild(sArray[i]);
addChild(bArray[bArray.length -1]);

//Nicholas

bArray[bArray.length - 1].width = 45
bArray[bArray.length - 1].height = 20
bArray[bArray.length - 1].x = i * 50 + 25;
bArray[bArray.length - 1].y = j*30 + 60;
	
	if (j == 0){
		var faceColor: ColorTransform = b.transform.colorTransform;
			faceColor.color = 0xFF0000;
			b.transform.colorTransform = faceColor;
		//Nicholas
		}
	
	
	if (j == 1){
		var face2Color: ColorTransform = b.transform.colorTransform;
			face2Color.color = 0xFF8000;
			b.transform.colorTransform = face2Color;
		}
	if (j == 2){
	
	var face3Color: ColorTransform = b.transform.colorTransform;
			face3Color.color = 0xFFFF00;
			b.transform.colorTransform = face3Color;
	}//Nicholas
	
	if(j == 3){
		var face4Color: ColorTransform = b.transform.colorTransform;
			face4Color.color = 0x00FF00;
			b.transform.colorTransform = face4Color;
		
		}
	
	
	if(j == 4){
		var face5Color: ColorTransform = b.transform.colorTransform;
			face5Color.color = 0x0000FF;
			b.transform.colorTransform = face5Color;
			}
	
	
	}}}
		
		
		
		//Lv 5
		if (RScore == 660 && LScore >0){
			
			
		ba.x =100;
		ba.y =200;
		
			for (var j:Number = 0; j<5; j++){
	for (var i:Number = 0; i<11; i++){
	var b: Brick = new Brick();
//sArray[i] = b
bArray.push(b);
//addChild(sArray[i]);
addChild(bArray[bArray.length -1]);

//Nicholas

bArray[bArray.length - 1].width = 45
bArray[bArray.length - 1].height = 20
bArray[bArray.length - 1].x = i * 50 + 25;
bArray[bArray.length - 1].y = j*30 + 60;
	
	if (j == 0){
		var faceColor: ColorTransform = b.transform.colorTransform;
			faceColor.color = 0xFF0000;
			b.transform.colorTransform = faceColor;
		//Nicholas
		}
	
	
	if (j == 1){
		var face2Color: ColorTransform = b.transform.colorTransform;
			face2Color.color = 0xFF8000;
			b.transform.colorTransform = face2Color;
		}
	if (j == 2){
	
	var face3Color: ColorTransform = b.transform.colorTransform;
			face3Color.color = 0xFFFF00;
			b.transform.colorTransform = face3Color;
	}//Nicholas
	
	if(j == 3){
		var face4Color: ColorTransform = b.transform.colorTransform;
			face4Color.color = 0x00FF00;
			b.transform.colorTransform = face4Color;
		
		}
	
	
	if(j == 4){
		var face5Color: ColorTransform = b.transform.colorTransform;
			face5Color.color = 0x0000FF;
			b.transform.colorTransform = face5Color;
			}
	
	
	}}}
		
		
		//win
		
		if (RScore == 825 && LScore >0){
		
		sb.visible = true;
		t6.visible = true ;
		
		ba.x =100;
	ba.y =200;
	ba.visible = false
	xspeed = 0;
	yspeed = 0;

		
		
		//////////////////////////////////////////////////////////////////////////////////////
		
		}
		
		//////////
		
		if (LScore == 0){

ba.x =100;
ba.y =200;
ba.visible = false
xspeed = 0;
yspeed = 0;
LScore = 0;



t4.visible = true;
t5.visible = true;
sb.visible = true
}
		//Nicholas
	
	t.text = String(LScore);
t.setTextFormat(tf);
	

	


//Nicholas


if (dir =="up" && p.x >50) {
 p.x -= 20;
 }

if (dir =="down" && p.x <500) {
 p.x += 20;
 }

}
	
stage.addEventListener(KeyboardEvent.KEY_UP, uFun);
function uFun(e:KeyboardEvent) {
dir = "stop";
}

//Nicholas

	stage.addEventListener(KeyboardEvent.KEY_DOWN,B15Fun);

function B15Fun(event:KeyboardEvent){


if (event.keyCode == 37){
	//p.x -=1;
	dir = "up";
}


if (event.keyCode == 39){
	//p.x +=1;
dir = "down";
}

//Nicholas
}
	
	
	
	stage.addEventListener(KeyboardEvent.KEY_DOWN,B16Fun);

function B16Fun(event:KeyboardEvent){


if (event.keyCode == 32){
	
	RScore++
	LScore ++
	}}
	
	
	//L score
	var t:TextField = new TextField();
addChild(t);
t.x = 50;
t.y = 10;
var tf:TextFormat = new TextFormat();
tf.size = 30;
tf.bold = true;
tf.font ="Comic Sans";
tf.color = 0x000000; 
var ht:TextField = new TextField();
addChild(ht);
ht.x = 30;
ht.y = 350;
t.setTextFormat(tf);
ht.setTextFormat(tf);
	
	
	var face13Color: ColorTransform = t.transform.colorTransform;
			face13Color.color = 0xFFFFFF;
			t.transform.colorTransform = face13Color;
	//Nicholas
	
	//R score
var tt:TextField = new TextField();
addChild(tt); // Nicholas
tt.x = 500;
tt.y = 10;
var tff:TextFormat = new TextFormat();
tff.size = 30;
tff.bold = true;
tff.font ="Comic Sans";
tff.color = 0x000000; 
tt.setTextFormat(tff);
tt.text = String(RScore);
	tt.text = String(RScore);
tt.setTextFormat(tff);
	
	var face12Color: ColorTransform = tt.transform.colorTransform;
			face12Color.color = 0xFFFFFF;
			tt.transform.colorTransform = face12Color;

	
	//Nicholas
	
	var sb:Brick = new Brick();
addChild(sb);
sb.x = 280;
sb.y = 200;
sb.height =  100;
sb.width = 300;
var face7Color: ColorTransform = sb.transform.colorTransform;
			face7Color.color = 0xFFFFFF;
			sb.transform.colorTransform = face7Color;


var ttt:TextField = new TextField();
addChild(ttt);
ttt.x = 235;
ttt.y = 180;
var tfff:TextFormat = new TextFormat();
tfff.size = 30;
tfff.bold = true;//Nicholas
tfff.font ="Comic Sans";
tfff.color = 0xFFFFFF; 
ttt.text = String("START");
ttt.setTextFormat(tfff);
ttt.width = 200;
	var face8Color: ColorTransform = ttt.transform.colorTransform;
			face8Color.color = 0x000000;
			ttt.transform.colorTransform = face8Color;

//t4.text = String("Level 2 start");


	var t4:TextField = new TextField();
addChild(t4);
t4.x = 205;
t4.y = 180;
var tf4:TextFormat = new TextFormat();
tf4.size = 30;
tf4.bold = true;//Nicholas
tf4.font ="Comic Sans";
tf4.color = 0xFFFFFF; 
t4.text = String("END OF GAME");
t4.setTextFormat(tf4);
t4.width = 300;
t4.visible = false ;
	var face9Color: ColorTransform = t4.transform.colorTransform;
			face9Color.color = 0x000000;
			t4.transform.colorTransform = face9Color;
	
	
	var t5:TextField = new TextField();
addChild(t5);
t5.x = 205;
t5.y = 200;
var tf5:TextFormat = new TextFormat();
tf5.size = 30;
tf5.bold = true;//Nicholas
tf5.font ="Comic Sans";
tf5.color = 0xFFFFFF; 
t5.text = String("Start new game?");
t5.setTextFormat(tf5);
t5.width = 300;
t5.visible = false ;
	var face10Color: ColorTransform = t5.transform.colorTransform;
			face10Color.color = 0x000000;
			t5.transform.colorTransform = face10Color;
	
	
	
	
	var t6:TextField = new TextField();
addChild(t6);
t6.x = 205;
t6.y = 180;
var tf6:TextFormat = new TextFormat();
tf6.size = 30;
tf6.bold = true;//Nicholas
tf6.font ="Comic Sans";
tf6.color = 0xFFFFFF; 
t6.text = String("YOU WON!");
t6.setTextFormat(tf6);
t6.width = 300;
t6.visible = false ;
	var face10Color: ColorTransform = t6.transform.colorTransform;
			face10Color.color = 0x000000;
			t6.transform.colorTransform = face10Color;
	
	
	
	ttt && sb.addEventListener(MouseEvent.CLICK, ZappFun);

function ZappFun(e:MouseEvent){


ttt.visible = false
t5.visible = false
sb.visible = false
addChild(ba)
ba.x =100;
ba.y =200;//Nicholas

//xspeed = 5;

//yspeed = 3;
	
	
	yspeed = 3
	xspeed = 5
	
	//yspeed = speed * Math.sin(45* Math.PI/180)
	//xspeed = speed * Math.cos(45* Math.PI/180)


}
	//Nicholas
	
	
	t5 && sb.addEventListener(MouseEvent.CLICK, Zapp2Fun);

function Zapp2Fun(e:MouseEvent){


ttt.visible = false
t5.visible = false
sb.visible = false
addChild(ba)
ba.x =100;
ba.y =200;//Nicholas
ba.visible = true

  
  LScore = 3
	RScore = 0
	yspeed = 3
	xspeed = 5
	
	
	//RScore == 825
	
	//yspeed = speed * Math.sin(45* Math.PI/180)
	//xspeed = speed * Math.cos(45* Math.PI/180)


}
	
	
	
}}}