float posX;
float posY;
float velX;
float velY;

float player1Y;
float player1X;

boolean inPausa = false;
boolean wPremuto = false;
boolean sPremuto = false;

void setup(){
    size(800,600);   
    frameRate = 60;
    posX = width/2;
    posY = height/2;
    velX = 3;
    velY = 4;
    
    player1X = 50;
    player1Y = 50;
    
    noStroke();
}

void draw(){
  background(0);
    
  ellipse(posX,posY,50,50);
  
  if ( !inPausa ){
    posX = posX + velX;
    posY = posY + velY;
  } 
 
  if ( posX > width || posX < 0 ){
    velX = -velX;
  }
  
  if ( posY > height || posY < 0 ){
    velY = -velY;
  }
  
  if ( wPremuto )
    player1Y = player1Y-6;
  if ( sPremuto )
    player1Y = player1Y+6;
    
  rect(player1X,player1Y,20,100);

}
void keyPressed(){
  if ( key == 'p') inPausa = !inPausa;
  if ( key == 's') sPremuto = true;
  if ( key == 'w') wPremuto = true;
}

void keyReleased(){
  if ( key == 's') sPremuto = false;
  if ( key == 'w') wPremuto = false;
}
