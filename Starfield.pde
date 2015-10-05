//your code here
NormalParticle[] bob;


void setup()
{
  background(0,0,0);
  size(500,500);
    bob = new NormalParticle[130];
  for(int i = 0; i<bob.length; i++){
     bob[i] = new NormalParticle();
  
  }
  //your code here
}
void draw()
{
  fill(0,0,0,10);
  rect(0,0,500,500);
fill(200,200,200);
  for(int i = 0; i<bob.length; i++){
   bob[i].show();
   bob[i].move();
   }
  
  //your code here
}
class NormalParticle
{
  int colors;
  
  double X, Y, Angle, Speed; 
  NormalParticle(){
  X=250;
  Y=250;
  Angle = Math.random()*200;
  Speed = 10;
  
  
  }
  void move(){
   X=X+ Math.cos(Angle) * Speed;
   Y=Y+ Math.sin(Angle) * Speed;
  }
  void show(){
  ellipse((float)X, (float)Y, 10,10);
  }
  //your code here
}
interface Particle
{
  
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}

