Particle[] galaxy= new Particle[1000];

void setup()
{
  background(0);
  size(300,300);
  for(int i=0; i < galaxy.length; i++){
    if(i==0){
      OddballParticle sue = new OddballParticle();
      galaxy[i]=sue;
    }
    if(i>0){
      Particle bob = new Particle();
      galaxy[i] = bob;
    }
  }
  //your code here
}
void draw()
{
  background(0);
  for(int i=0; i < galaxy.length; i++){
    galaxy[i].show();
    galaxy[i].move();
  }
}
class Particle
{
  double myX, myY, spd, theta, stroke;
  color myColor;
  Particle(){
    stroke=(float)Math.random()*3;
    myX=150;
    myY=150;
    spd=(Math.random()*10);
    theta= (float)(2*PI*Math.random());
    myColor= color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }//constructor end
  void show(){
  strokeWeight((float)stroke);
  stroke(myColor);
  point((float)myX,(float)myY);
  }//end show
  void move(){
  myX=myX+spd*Math.cos(theta);
  myY=myY+spd*Math.sin(theta);
  }//end move
}

class OddballParticle extends Particle
{
  OddballParticle(){
    stroke=15;
    myX=150;
    myY=150;
    spd=(Math.random()*5);
    theta= (float)(2*PI*Math.random());
    myColor= 255;
  }
  //your code here
}
