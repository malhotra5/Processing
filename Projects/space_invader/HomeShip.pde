class player{
  float x = 250;
  float y = 450;
  //ArrayList<beam> shots = new ArrayList<beam>();
  
  void createRect(){
    rectMode(CENTER);
    rect(x,y,20,50);
    fill(138, 43, 250);
  }
  void moveright(float speed){
    
    if (speed > 0){
      x = x + speed;
      rect(x,y,20,50);
    }
    
  }
  void moveleft(float speed){
     if (speed > 0){
       x = x - speed;
       rect(x,y,20,50);
     }
     
  }
  void moveup(float speed){
     if (speed > 0){
       y = y - speed;
       rect(x,y,20,50);
     }
     
  }
  void movedown(float speed){
    if (speed > 0){
      y = y + speed;
      rect(x,y,20,50);
    }
    
  }
  void destroyed(){
    speed = 0;
  }
  void replay(){
    x = 250;
    y = 450;
  }
}
  