class Invader{

  float x = random(width);
  float y = random (-200,-100);
  float lowSpeed = 0.1;
  float highSpeed = 0.5;
  float count = 0;
  float speed = random(lowSpeed, highSpeed);

  void InvaderCome(){
    
    lowSpeed = lowSpeed + 0.001;
    highSpeed = highSpeed + 0.001;
    y = y + speed;
    
    if (y > height){
      y = random (-200,-100);
      x = random(width);
      speed = random(lowSpeed, highSpeed);
      count = count + 1;
      if (count%4 == 0){
        ship.add(new Invader());
      }
    }
    
    
  }
  
  void showInvader(){
    ellipse(x,y + 10,20,20);
    fill(138, 43, 250);
  }
  void destroyed(){
    lowSpeed = 0;
    highSpeed = 0;
    speed = 0;
  }
  void replay(){
    speed = random(lowSpeed, highSpeed);
    x = random(width);
    y = random (-200,-100);
    lowSpeed = 0.1;
    highSpeed = 0.5;
    count = 0;
    speed = random(lowSpeed, highSpeed);
  }
  }