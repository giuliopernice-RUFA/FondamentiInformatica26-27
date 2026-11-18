float posX;
float posY;
float velX;
float velY;
float size;
float velS;

void setup(){
  size(800,600);
  frameRate(60);
  posX = width/2;
  posY = height/2;
  velX = 5;
  velY = 2;
  size = 50;
  velS = 1;
}


void draw(){
   background(0);
   posX = posX + velX;
   posY = posY + velY;
   size = size + velS;
   
   if ( posX > width ){
     velX = -velX;
   }
   if ( posX < 0 ){
     velX = -velX;
   }
   if ( posY > height ){
       velY = -velY;
   }
   if ( posY < 0 ){
       velY = -velY;
   }
   if ( size > 200 ){
       velS = -velS;
   }
   if ( size < 20 ){
       velS = -velS;
   }
   
   
   circle(posX,posY,size);
}
