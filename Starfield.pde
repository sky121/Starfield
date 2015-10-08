//your code here
Particle[] bob;


void setup()
{

  size(500,500);
    bob = new Particle[50];
  for(int i = 0; i<bob.length; i++){
     bob[i] = new NormalParticle();
  
  }
  bob[49] = new JumboParticle();
    bob[48] = new OddballParticle();
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
  
  

  int colors, colors2, colors3;
  int sise;
  double X, Y, Angle, Speed; 
  NormalParticle(){
    sise=10;
  X=250;
  Y=250;
  Angle = Math.random()*200;
  Speed = Math.random()*6+4;
  
  colors = (int)(Math.random()*255);
    colors2 = (int)(Math.random()*255);
      colors3 = (int)(Math.random()*255);
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
    stroke(colors3,colors,colors2); 
 fill(colors3,colors,colors2);     
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
  int xBac, yBac;
       int changeX = 5;
  int changeY = 5;
    int colors;
  int sise;
  double X, Y, Angle, Speed; 
  OddballParticle(){
     
    sise=30;

       xBac = (int)(Math.random()*500);
      yBac = (int)(Math.random()*500);
  
  }
  public void move(){

            xBac = xBac +  (int)(Math.random()*10-changeX);
      yBac = yBac + (int)(Math.random()*10-changeY);
      if(xBac>500||xBac<0){
       xBac = (int)(Math.random()*500);
      }
      if(yBac>500||yBac<0){
       yBac = (int)(Math.random()*500);
      }
      
  }
  public void show(){
        stroke(255);
 fill(255);     
  ellipse(xBac, yBac, sise,sise);

  }
  //your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
  JumboParticle(){
      colors = (int)(Math.random()*255);
    colors2 = (int)(Math.random()*255);
      colors3 = (int)(Math.random()*255);
  sise= 50;
  }
  //your code here
}


