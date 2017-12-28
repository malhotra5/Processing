class Drop{
  float x = random(width);
  float y = random(-400,-100);
  float speed = random(1,6);
  float len = random(10,20);
  float thick = len * 0.08;
  float gravity = len * 0.0003;
 
   void fall(){
     y = y + speed;
     speed = speed + gravity;     
     if (y > height){
       y = random(-200,-100);
       float speed = random(1,6);
     }
   }
  void show(){
    strokeWeight(thick);
    stroke(138, 43, 250);
    line(x, y, x, y + len);
    
  }
}