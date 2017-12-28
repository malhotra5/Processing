class exp{
  float x = 300;
  float y = 600;
  float z = 90;
  
  void lines(){
    translate(cos(z), sin(z));
    z = z + 10;
  }

  void show(){
    stroke(255,255,255);
    strokeWeight(3);
    line(x,y,x + cos(z)*x,y + sin(z)*y);
    
  
  }

}