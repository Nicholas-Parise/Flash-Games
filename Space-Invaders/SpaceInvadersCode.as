package {

import flash.display.MovieClip;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.text.TextField;
import flash.text.TextFormat;

public class SpaceInvadersCode extends MovieClip {
public function SpaceInvadersCode() {
		var speed:Number = 0;
var alienspeed:Number = 2;
var i:Number = 0

var level:Number = 0
var displaylevel:Number = 1

var sound1 = new explode();

var sound2 = new shoot(); 
var background = new Background();
background.play(2000,500)

var t1:TextField = new TextField();
var tf1:TextFormat = new TextFormat();
var t2:TextField = new TextField();
var tf2:TextFormat = new TextFormat();
var tt:TextField = new TextField();
var tff:TextFormat = new TextFormat();
var tf3:TextFormat = new TextFormat();
var t3:TextField = new TextField();
var t4:TextField = new TextField();
var tf4:TextFormat = new TextFormat();
var t5:TextField = new TextField();
var tf5:TextFormat = new TextFormat();
var t8:TextField = new TextField();
var tf8:TextFormat = new TextFormat();
var t9:TextField = new TextField();
var tf9:TextFormat = new TextFormat();
var t10:TextField = new TextField();
var tf10:TextFormat = new TextFormat();
var t7:TextField = new TextField();
var tf7:TextFormat = new TextFormat();

var score:Number = 0


var explodeX:Number = 0
var explodeY:Number = 0
var s:ship = new ship();
var b:bullet = new bullet();
var e:explosion = new explosion();

var d:Aliena = new Aliena();
var j:Alienb = new Alienb();
var f:Alienc = new Alienc();



var dir:String = "stop";
var Score:Number = 0;	
		var alienArray:Array = new Array();
		
	var bangBang:Boolean = false;
var boomBoom:Boolean = false;
	var offstage:Boolean = false
	
	//Onload	
	

addChild(d);
addChild(j);
addChild(f);


d.width = 30
d.height = 30
d.x = 550/2
d.y = 300
d.visible = true

j.width = 30
j.height = 30
j.x = 550/2
j.y = 250
j.visible = true

f.width = 30
f.height = 30
f.x = 550/2
f.y = 350
f.visible = true

	
s.x = 450;
s.y = 370;
	s.visible = false

e.x = -450;
e.y = 200;

b.x = -500;
b.y=500;
b.width = 15
b.height = 25



var t:TextField = new TextField();
addChild(t);
t.x = 180;
t.y = 100;
var tf:TextFormat = new TextFormat();
tf.size = 30;
tf.bold = true;
tf.font ="Comic Sans";
tf.color = 0x000000; 
t.text = String("SPACE INVADERS");
t.setTextFormat(tf);
t.visible = true
t.width = 300

addChild(t1);
t1.x = 250;
t1.y = 130;
tf1.size = 30;
tf1.bold = true;
tf1.font ="Comic Sans";
tf1.color = 0x000000; 
t1.text = String("START");
t1.setTextFormat(tf);
t1.visible = true
t1.width = 300
t1.visible = true


addChild(t2);
t2.x = 350;
t2.y = 10;
tf2.size = 30;
tf2.bold = true;
tf2.font ="Comic Sans";
tf2.color = 0x000000; 
t2.text = String("SCORE");
t2.setTextFormat(tf2);
t2.visible = true
t2.width = 300



addChild(t7);
t7.x = 480
t7.y = 10;

tf7.size = 30;
tf7.bold = true;
tf7.font ="Comic Sans";
tf7.color = 0x000000; 
t7.text = String(score);
t7.setTextFormat(tf7);
t7.width = 300


		
			

addChild(t3);
t3.x = 300
t3.y = 230

tf3.size = 30;
tf3.bold = true;
tf3.font ="Comic Sans";
tf3.color = 0x000000; 
t3.text = String("10 Points");
t3.setTextFormat(tf3);
t3.visible = true
t3.width = 300





addChild(t4);
t4.x = 300
t4.y = 280
tf4.size = 30;
tf4.bold = true;
tf4.font ="Comic Sans";
tf4.color = 0x000000; 
t4.text = String("20 Points");
t4.setTextFormat(tf4);
t4.visible = true
t4.width = 300

addChild(t5);
t5.x = 300
t5.y = 330

tf5.size = 30;
tf5.bold = true;
tf5.font ="Comic Sans";
tf5.color = 0x000000; 
t5.text = String("40 Points");
t5.setTextFormat(tf5);
t5.visible = true
t5.width = 300




addChild(t8);
t8.x = 275
t8.y = 200

tf8.size = 30;
tf8.bold = true;
tf8.font ="Comic Sans";
tf8.color = 0x000000; 
t8.text = String("Next Level?");
t8.setTextFormat(tf8);
t8.width = 300
t8.visible = false




addChild(t9);
t9.x = 50
t9.y = 200

tf9.size = 30;
tf9.bold = true;
tf9.font ="Comic Sans";
tf9.color = 0x000000; 
t9.text = String("You have Died, You got to level:");
t9.setTextFormat(tf9);
t9.width = 450
t9.visible = false









addChild(t10);
t10.x = 300
t10.y = 10

tf10.size = 30;
tf10.bold = true;
tf10.font ="Comic Sans";
tf10.color = 0x000000; 
t10.text = String(displaylevel);
t10.setTextFormat(tf10);
t10.width = 450
t10.visible = true



var t11:TextField = new TextField();
addChild(t11);
t11.x = 180
t11.y = 10
var tf11:TextFormat = new TextFormat();
tf11.size = 30;
tf11.bold = true;
tf11.font ="Comic Sans";
tf11.color = 0x000000; 
t11.text = String("LEVEL");
t11.setTextFormat(tf11);
t11.width = 450
t11.visible = true


//////***********************************************************
//events



addEventListener(Event.ENTER_FRAME, mainFun);
function mainFun(e:Event){


//moveBangBang();
growBoomBoom();
shooting();	
movebul();
movecan()
delbul()

alienmove();
alienbounce();
alienbounce2()
hittest();
die()
CanNextLevel()

StartNextLevel()
ScoreRefresh()
}

t8.addEventListener(MouseEvent.CLICK, ZappFun2);

function ZappFun2(e:MouseEvent){

Continue()
}



t1.addEventListener(MouseEvent.CLICK, ZappFun);

function ZappFun(e:MouseEvent){

startgame();
}

stage.addEventListener(KeyboardEvent.KEY_UP, uFun);
			function uFun(e:KeyboardEvent) {

				StopFun(e.keyCode);
			}

	stage.addEventListener(KeyboardEvent.KEY_DOWN,B15Fun);
			function B15Fun(e:KeyboardEvent) {

				DirFun(e.keyCode);
			}

//functions********************

function delbul() {

				if (b.y < 0) {

					b.y=500;
					speed=0;
				}}


function movebul() {
b.y-=speed;
			}

function shooting() {
				
				stage.addEventListener(KeyboardEvent.KEY_DOWN,B18Fun);
				function B18Fun(e:KeyboardEvent) {

					shootFun(e.keyCode);

				}}


			function shootFun(e:Number) {

				if (e==32 && b.y ==500) {
					b.x=s.x;
					b.y = s.y
					speed = 15;
				sound2.play();
				}}





//Move
	function DirFun(e:Number) {

				if (e==37) {
					dir="up";
				}

				if (e==39) {
					dir="down";
				}
			}

			function StopFun(e:Number) {

				dir="stop";
			}


			function movecan() {

				if (dir=="up"&&s.x>30) {
					s.x-=8;
				}

				if (dir=="down"&&s.x<520) {
					s.x+=8;
				}}

	
	//****************************
	
	

	

	

function makealiens(){


for (var j:Number = 0; j<5; j++){
	for (i = 0; i<11; i++){

if(j == 0){
	var c:Alienc = new Alienc
alienArray.push(c);
addChild(alienArray[alienArray.length -1])
alienArray[alienArray.length - 1].x = i * 40 + 20;
alienArray[alienArray.length - 1].y = j*30 + 60;
alienArray[alienArray.length - 1].width = 30
alienArray[alienArray.length - 1].height = 30
	


	} else if(j == 1 || j == 2){
var a:Aliena = new Aliena
alienArray.push(a);
addChild(alienArray[alienArray.length -1])
alienArray[alienArray.length - 1].x = i * 40 + 20;
alienArray[alienArray.length - 1].y = j*30 + 60;
alienArray[alienArray.length - 1].width = 30
alienArray[alienArray.length - 1].height = 30

}else if(j == 3 || j == 4){
	
	
	var b:Alienb = new Alienb
alienArray.push(b);
addChild(alienArray[alienArray.length -1])
alienArray[alienArray.length - 1].x = i * 40 + 20;
alienArray[alienArray.length - 1].y = j*30 + 60;
alienArray[alienArray.length - 1].width = 30
alienArray[alienArray.length - 1].height = 30
}

	
	}}
}

//****************



function alienmove(){
	

	for (i= 0; i<alienArray.length; i++){
alienArray[i].x += alienspeed * displaylevel / 1.3

	}}


function alienbounce2():void{
for (i = 0; i<alienArray.length; i++){
if(alienArray[i].x < 10 && alienArray[i].y < 600){
	alienspeed *=-1

for (i = 0; i<alienArray.length; i++){
alienArray[i].y += 10
}}}}


function alienbounce():void{

for (i = 0; i<alienArray.length; i++){
	if(alienArray[i].x > 540 && alienArray[i].y < 600){
	alienspeed *=-1	
	
	for (i= 0; i<alienArray.length; i++){
	alienArray[i].y += 10
}}}}




function hittest():void{

for (i = 0; i<alienArray.length; i++){


if (alienArray[i].hitTestObject(b) && i > -1 + 55* level && i < 11+ 55*level){		

score +=40

 alienArray[i].y += 600
explodeY = b.y
explodeX = b.x	
	 makeBangBangExplode();
 boomBoom = true;
 sound1.play();
speed = 0;
b.y  = 500

}else if (alienArray[i].hitTestObject(b) && i > 10+ 55*level && i < 33+ 55*level){
	score +=20

 alienArray[i].y += 600
explodeY = b.y
explodeX = b.x	
	 makeBangBangExplode();
 boomBoom = true;
 sound1.play();
speed = 0;
b.y  = 500

}else if (alienArray[i].hitTestObject(b) && i > 32+ 55*level && i < 55+ 55*level){
	score +=5

 alienArray[i].y += 600
explodeY = b.y
explodeX = b.x	
	 makeBangBangExplode();
 boomBoom = true;
 sound1.play();
speed = 0;
b.y  = 500

}}}



function die(){
for (i = 0; i<alienArray.length; i++){
if(alienArray[i].y == 340){

EndGame()

}}}


function CanNextLevel(){
	if(score == 990 * displaylevel){
		offstage = true
		}
	
	}



function StartNextLevel(){

if(offstage == true){	
t8.visible = true
offstage = false
}
}



function growBoomBoom():void {
 if (boomBoom == true) {
 e.width += 15;
 e.height += 15;
 if (e.width > 100) {
 e.x = -500;
 boomBoom = false;
 }}}


 function makeBangBangExplode():void {

for (i = 0; i<alienArray.length; i++){
e.x = explodeX
 e.y = explodeY
 }
e.width = 1;
 e.height = 1;

 }



function startgame(){

makealiens();
	
	t.visible = false
	t1.visible = false
	d.visible = false
	j.visible = false
	f.visible = false
	s.visible = true
	addChild(s);
	addChild(e);
	addChild(b);
	t3.visible = false
t4.visible = false
t5.visible = false
	t9.visible = false

	level = 0
	displaylevel = 1
	score = 0
	}


function EndGame(){
	
	t.visible = true
	t1.visible = true
	d.visible = true
	j.visible = true
	f.visible = true
	s.visible = false
	removeChild(s);
	removeChild(e);
	removeChild(b);
	t3.visible = true
t4.visible = true
t5.visible = true
	t9.visible = true
t10.visible = true
	t10.x = 480
t10.y = 200
	
	level = 0
	displaylevel = 1
	score = 0
	for (i = 0; i<alienArray.length; i++){
	 alienArray[i].y += 600
	}
	
	}


function Continue(){
	
	makealiens();
	t8.visible = false
	level++
	displaylevel ++
	t9.visible = false

	}


function ScoreRefresh(){

				t7.text = String(score);
				t7.setTextFormat(tf7);
			
			t10.text = String(displaylevel);
				t10.setTextFormat(tf10);
			
			}







}}}