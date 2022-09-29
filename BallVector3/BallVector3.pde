int nMover = 100; 
Mover[] m = new Mover[nMover]; 
boolean clicked = false;
color col = color(255,0,255);

void setup()
{
 //size(800,800); 

 fullScreen();
 for (int i = 0; i < m.length; i = i + 1) //loop that will repeat 10 times
 {
   m[i] = new Mover();
 }
}

void drawMe()
{

}


void draw()
{
  
noStroke();
fill(0,0,0,50);
rect(0,0, width, height);

 for (int i = 0; i < m.length; i = i + 1)
 {
   m[i].update();
   m[i].display();
 }


}


void mousePressed()
{
 for (int i = 0; i < m.length; i = i + 1)
   {
    m[i].bite(mouseX, mouseY); 
    col= col - 10; 
   
  } 

}
