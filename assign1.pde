PImage bg1Img;
PImage bg2Img;
PImage enemyImg;
PImage fighterImg;
PImage hpImg;
PImage treasureImg;
int x;
int y;


void setup () {
  size(640,480) ;  // must use this size.
  x = 0;
  
  bg1Img = loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
  
   
  hpImg = loadImage("img/hp.png");
  fighterImg = loadImage("img/fighter.png");
  enemyImg = loadImage("img/enemy.png");
  treasureImg = loadImage("img/treasure.png");
}

  

void draw() {

 image(treasureImg,random(1,640),random(1,480)); //treasure
  
  colorMode(RGB);
  stroke(255,0,0);//red
  fill(255,0,0);//red
  rect(30,30,random(1,200),10);               //blood
  
  image(bg1Img,x,0);
  x += 2;
if(x>=640){
  image(bg2Img,x-640,0);
  x += 2;   }
if(x>=1920){
  image(bg1Img,x,0);
  x = 0;
}                            //background
    
  image(hpImg,20,20);            //hp
  
  image(fighterImg,550,240);     //fighter
  
  image(enemyImg,x,y,random(1,640),random(1,480));  
  x++; //enemy

}
