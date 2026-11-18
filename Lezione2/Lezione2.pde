float xPos = 0;
float yPos = 0;
float xVel = 1;
float yVel = 1;
String casa = "casa mia";

void setup(){
  size(500,500);
 // frameRate(60);
  noStroke();
  xPos = 50;
 
  float xVel = 10;
}


void draw(){
  background(0);

  xPos = xPos + xVel;
  yPos = yPos + yVel;
 
  circle(xPos,yPos,50);
   println(frameCount);

  println(casa);
}
