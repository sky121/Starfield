//your code here
NormalParticle[] bob;


void setup()
{

  size(500,500);
    bob = new NormalParticle[50];
  for(int i = 0; i<bob.length; i++){
     bob[i] = new NormalParticle();
  
  }
  bob[49] = new JumboParticle();
  //your code here
}
void draw()
{
  fill(0,0,0,50);
  rect(0,0,500,500);

  for(int i = 0; i<bob.length; i++){
   bob[i].show();
   bob[i].move();
   }
  
  //your code here
}
class NormalParticle  implements Particle
{
  
  

  int colors;
  int sise;
  double X, Y, Angle, Speed; 
  NormalParticle(){
    sise=10;
  X=250;
  Y=250;
  Angle = Math.random()*200;
  Speed = Math.random()*6+4;
  
  
  }
 public void move(){
   X=X+ Math.cos(Angle) * Speed;
   Y=Y+ Math.sin(Angle) * Speed;
   if(X>500 || X<0){
   Y=250;
   X=250;
     Angle = Math.random()*200;
   }
   if(Y>500 || Y<0){
   Y=250;
   X=250;
     Angle = Math.random()*200;
   }
  }
  public void show(){
    stroke(255,255,255);
 fill(255,255,255);     
  ellipse((float)X, (float)Y, sise,sise);
  }
  //your code here
}
interface Particle
{
  public void move();
  public void show();
  
  //your code here
}
class OddballParticle implements Particle //uses an interface
{
  public void move(){
  }
  public void show(){
  }
  //your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
  JumboParticle(){
  sise= 50;
  }
  //your code here
}

