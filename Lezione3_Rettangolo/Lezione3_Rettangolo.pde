float px;
float py;
float larghezza;
float altezza;


void setup()
{
  size(800,600);
  
  px = 200;
  py = 100;
  larghezza = 400;
  altezza = 300;
}


void draw()
{
    background(0);
    if ( mouseX > px && mouseX < px + larghezza && mouseY > py && mouseY < py + altezza ){
        println("sono dentro al rettangolo");
        fill(#2DFC00);
    }
    else{
        fill(#BE26ED);
        println("sono fuori dal rettangolo");
    }
    
    rect(px,py,larghezza,altezza);
    //println("mouseX " +  mouseX + " mouseY " + mouseY);
}
