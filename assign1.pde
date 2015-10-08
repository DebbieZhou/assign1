PImage bg1Img;
PImage bg2Img;
PImage enemyImg;
PImage fighterImg;
PImage hpImg;
PImage treasureImg;
int x;
int y;
float a;
float b;
int r;
int t;
float w;
float xEn;
float yEn;

void setup () {
  size(640,480) ;  // must use this size.
  
  x = 0;
  t = -641;
  float r = random(1,200);
  a = random(1,640);
  b = random(1,480);
  w = floor(random(10,190));
  xEn = random(640);
  yEn = random(480);
  
  bg1Img = loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
  hpImg = loadImage("img/hp.png");
  fighterImg = loadImage("img/fighter.png");
  enemyImg = loadImage("img/enemy.png");
  treasureImg = loadImage("img/treasure.png");
}

void draw() {
  image(bg1Img,x,0);
    x += 2;
  image(bg2Img,t,0);
    t+=2;
 
if(x>=640){
  x=-640; }
if(t>=640){
  t=-640;}               //background
          
 image(treasureImg,a,b); //treasure
 
  colorMode(RGB);
  stroke(255,0,0);//red
  fill(255,0,0);//red
  rect(10, 5, w, 24);             //blood 
    
  image(hpImg,0,0);            //hp
  
  image(fighterImg,550,240);     //fighter
 
  image(enemyImg,xEn,yEn);  
  xEn++;
  xEn %= 640;                  //enemy
}
