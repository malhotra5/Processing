import ddf.minim.*;
AudioSnippet shooting;
AudioSnippet dead;
Minim minim1;
Minim minim2;
ArrayList<Invader> ship = new ArrayList<Invader>();
ArrayList<beam> shots = new ArrayList<beam>();
player player = new player();
float speed = 2;
int count = 0;
int hitcount = 0;
int check = 0;
int soundCheck = 0;
void setup(){
  surface.setSize(600,600);
  for (int i = 0; i < 10; i++){
    ship.add(new Invader());
  }  
  minim1 = new Minim(this);
  minim2 = new Minim(this);
  shooting = minim1.loadSnippet("ArcadeShooting.wav");
  dead = minim2.loadSnippet("SadTromboneWavForm.wav");
}

void draw(){
    background(230,230,250);
    //Player Ship
    player.createRect();
    //Invader Ships
    for (int i = 0; i < ship.size(); i++){
      ship.get(i).InvaderCome();
      ship.get(i).showInvader();
      float d = dist(player.x, player.y, ship.get(i).x, ship.get(i).y );
      if (d < 27){
        for (int a = 0 ;a < ship.size(); a++){
            if (ship.get(a).x < player.x + 20 || ship.get(a).y > player.y - 50 || ship.get(a).x > player.x - 20 || ship.get(a).y < player.y + 50){
            player.destroyed();
            check = 1;
            for(int p = 0; p < ship.size(); p++){
              ship.get(p).destroyed();            
          }
        }
      }
      if (check == 1){
        PFont f;
        f = createFont("Arial",16);
        textFont(f , 36);
        textAlign(CENTER);
        text("YOU DEAD!!!",width/2,height/2);
        text("Score:", width/2 - 55,height/2 + 35);
        text(hitcount, width/2 + 10,height/2 + 35);
        }
      }
    }
      
    
    //Shooting for player ship
    for (int i =0 ; i < shots.size(); i++){
      shots.get(i).move();
      shots.get(i).showBeam();
      count = 1;
      for(int z =  0; z < ship.size(); z++){
        try{   
        shots.get(i).checkHit(z,i);
        }
        catch(Exception e){}  //shots.get(i) = null;
      }
    }

    
    
    //Border Restrictions
    if (player.x < 0){
      player.x = 0;
    }
    else if (player.x > 600){
      player.x = 600;
    }
    
    else if (player.y < 0){
      player.y = 0;
    }
    else if(player.y > 600){
      player.y = 600;
    }
    keyPressed();
    count = 0;
    if (check == 1){
      if (soundCheck == 0){
        dead.rewind();
        dead.play();
        soundCheck = 1;
      }
    }
}




//Key presss events 
void keyPressed(){
  
  if (key == 'd'){
    player.moveright(speed);
  }
  else if (key == 'a'){
    player.moveleft(speed);
  }
  else if (key == 'w'){
    player.moveup(speed);
  }
  else if (key == 's'){
    player.movedown(speed);
  }
  else if (key == 'p'){
    speed = speed + 0.07;
  }
  else if (key == 'o'){
  speed = speed - 0.07;
  }
  else if (key == 'k'){
    if (check == 0){
      if(count == 0){ 
      shooting.rewind();
      shooting.play();
      shots.add(new beam());
      count = 0;
      }
    
    }
  }
  else if (key == 'r'){
    speed = 2;
    player.replay();
    for(int i = 0; i < ship.size(); i++){
      ship.get(i).replay();
    }
    count = 0;
    hitcount = 0;
    check = 0;
    soundCheck = 0;
    
  }
}