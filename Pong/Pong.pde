float posX;
float posY;
float velX;
float velY;

float ballRadius = 25;

float player1Y;
float player1X;

float playerW = 20;
float playerH = 100;

float player2X;
float player2Y;

int score1, score2;
int maxScore = 5;

boolean inPausa = false;
boolean wPremuto = false;
boolean sPremuto = false;
boolean iPremuto = false;
boolean kPremuto = false;

void setup() {
  size(800, 600);
  frameRate = 60;
  posX = width/2;
  posY = height/2;
  velX = 3;
  velY = 4;

  player1X = 50;
  player1Y = 50;
  player2X = width - 50;
  player2Y = 50;
  
  score1 = 0;
  score2 = 0;

  noStroke();
}

void draw() {
  background(0);

  ellipse(posX, posY, ballRadius*2, ballRadius*2);

  if ( !inPausa ) {
    posX = posX + velX;
    posY = posY + velY;
  }

  if ( posX > width - ballRadius  ) {
    //velX = -velX;
    println("ha fatto gol player 1");
    score1++;
    println(score1 + " - " + score2);
    if ( score1 >= maxScore ){
      println("score1 win");
      score1 = 0;
      score2 = 0; 
    }
    posX = width/2;
    posY= height/2;
  }
  else if ( posX < ballRadius ){
    println("ha fatto gol player 2");
    score2++;
    println(score1 + " - " + score2);
    if ( score2 >= maxScore ){
      println("score2 win");
      score1 = 0;
      score2 = 0; 
    }
    posX = width/2;
    posY= height/2;
    
  }

  if ( posY > height - ballRadius || posY < ballRadius ) {
    velY = -velY;
    
  }

  if ( posX > player1X - ballRadius && posX < player1X + playerW + ballRadius &&
    posY > player1Y - ballRadius && posY < player1Y + playerH + ballRadius ) {
    velX = abs(velX);
  } else if ( posX > player2X - ballRadius && posX < player2X + playerW + ballRadius &&
    posY > player2Y - ballRadius && posY < player2Y + playerH + ballRadius ) {
    velX = -abs(velX);
  }

  if ( wPremuto )
    player1Y = player1Y-6;
  if ( sPremuto )
    player1Y = player1Y+6;

  if ( iPremuto )
    player2Y = player2Y-6;
  if ( kPremuto )
    player2Y = player2Y+6;

  rect(player1X, player1Y, playerW, playerH);
  rect(player2X, player2Y, playerW, playerH);
}
void keyPressed() {
  if ( key == 'p') inPausa = !inPausa;
  else if ( key == 's') sPremuto = true;
  else if ( key == 'w') wPremuto = true;
  else if ( key == 'i') iPremuto = true;
  else if ( key == 'k') kPremuto = true;
}

void keyReleased() {
  if ( key == 's') sPremuto = false;
  else if ( key == 'w') wPremuto = false;
  else if ( key == 'i') iPremuto = false;
  else if ( key == 'k') kPremuto = false;
}
