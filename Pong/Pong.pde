float posX;
float posY;
float velX;
float velY;

float ballRadius = 25;

float player1Y;
float player1X;
float player1W = 20;
float player1H = 100;

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
    
  ellipse(posX,posY,ballRadius*2,ballRadius*2);
  
  if ( !inPausa ){
    posX = posX + velX;
    posY = posY + velY;
  } 
 
  if ( posX > width - ballRadius || posX < ballRadius ){
    velX = -velX;
  }
  
  if ( posY > height - ballRadius || posY < ballRadius ){
    velY = -velY;
  }
  
  if ( posX > player1X && posX < player1X + player1W  && posY > player1Y && posY < player1Y + player1H ){
     velX = abs(velX);
  }
  
  if ( wPremuto )
    player1Y = player1Y-6;
  if ( sPremuto )
    player1Y = player1Y+6;
    
  rect(player1X,player1Y,player1W,player1H);

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
