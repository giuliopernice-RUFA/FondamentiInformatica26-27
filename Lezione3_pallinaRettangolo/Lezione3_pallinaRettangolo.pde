float posX;
float posY;
float velX;
float velY;

//variabili rettangolo
float rx;
float ry;
float larghezza;
float altezza;

boolean inPausa = false;

void setup() {
  size(800, 600);
  posX = width/2;
  posY = height/2;
  velX = 3;
  velY = 4;

  rx = 200;
  ry = 150;
  larghezza = 400;
  altezza = 300;

  noStroke();
}

void draw() {
  background(0);

  fill(255, 0, 0);
  rect(rx, ry, larghezza, altezza);

  if ( posX > rx && posX < rx + larghezza && posY > ry && posY < ry + altezza ) {
    println("sono dentro al rettangolo");
    fill(#2DFC00);
  } else {
    fill(#BE26ED);
    println("sono fuori dal rettangolo");
  }
  ellipse(posX, posY, 50, 50);

  if ( !inPausa ) {
    posX = posX + velX;
    posY = posY + velY;
  }
  if ( posX > width || posX < 0 ) {
    velX = -velX;
  }

  if ( posY > height || posY < 0 ) {
    velY = -velY;
  }
}
