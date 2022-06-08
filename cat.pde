Rect rect1 = new Rect();
Image background = new Image();
Image sword = new Image();
Image steave = new Image();
Image arie = new Image();
Image arie2 = new Image();
Image game  = new Image();
Image victory  = new Image();
Text txt3 = new Text();
Image arie3 = new Image();
Music music = new Music();
Music strike = new Music();
Music beep = new Music();
Text txt1 = new Text();
Text txt2 = new Text();
int b =840;
int c = 20;
int a =665;
int d = int(0);
int heart =3;
int bow =0;
void setup(){
  music.load("drama.mp3");
  strike.load("how.mp3");
  beep.load("beep.mp3");
  size(1000,665);
  background.setImage("cat.jpg");
  background.x=0;
  background.y=0;
  
  
  txt3.x=900;
  txt3.y=120;
  txt3.brush = color(255,0,0);
  txt3.alpha = 255;
  txt3.text = str(bow);
  txt3.textSize = 150;
  
  sword.setImage("sword5.png");
  sword.x=430;
  sword.x=int(random(10,665));
  sword.y=-15;  
  sword.height=130;
  sword.width=120;  
  sword.direction = 90;
  sword.speed=4;
  
  steave.setImage("steave4.png");
  steave.y=485;
  steave.x=400;
  steave.height=190;
  steave.width=150;
  
  
  arie.setImage("arie.png");
  arie.y=4;
  arie.x=0;
  arie.height=120;
  arie.width=120;

  arie2.setImage("arie2.png");
  arie2.y=4;
  arie2.x=85;
  arie2.height=120;
  arie2.width=120;

  arie3.setImage("arie3.png");
  arie3.y=4;
  arie3.x=180;
  arie3.height=120;
  arie3.width=120;
  
  
  game.setImage("game.png");
  game.x=0;
  game.height=665;
  game.width=1000;
  game.y=0;
}
 
   
void draw() {
  background.draw();
  if(heart>0) {
  sword.draw();
  steave.draw();
  txt3.draw();

       
    if (heart == 3){
     arie.draw();
     arie2.draw();
     arie3.draw();

}
    if (heart == 3){
     arie.draw();
     arie2.draw();
     arie3.draw();
    }
    else if(heart == 2){
      arie.draw();
      arie2.draw();
    }
    else{
      arie.draw();
    } 
      
        if (sword.y > 665){
    sword.y=0;
    sword.x = int(random(10 , 665));
    beep.play();
    heart = heart - 1;
    }
    if(sword.pointInShape(steave.x , steave.y)){
      sword.y=20;
      sword.x = int(random(10,665));
      strike.play();
     bow = bow + 1;
     txt3.text = str(bow);
     txt3.draw();
   } 
  }
     else{
    game.draw();
    txt3.draw();

   }
  if(mouseX>steave.x){
    if ((steave.x != b) && (steave.x < b)){
         steave.x = steave.x+4;
    }
   }
   else{
     if ((steave.x != c) && (steave.x > c)){
        steave.x = steave.x -4;
     }
    }
   if ((sword.x != a) && (sword.x > a)){
     sword.x = sword.x -665;
    
      }

   
     
     

}


void mousePressed() {
   music.play();
   
  
   
}
