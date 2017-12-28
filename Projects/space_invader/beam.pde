class beam{
  
  float yloc = player.y;
  float x = player.x;
  float count = 0;
  float hity;
  float distance;
  float score = 0;
 
  
  void move(){
    yloc = yloc - 1;
   }
   void showBeam(){
     if(count == 0){
     stroke(3);
     ellipse(x,yloc - 25,5, 5);
     }
    else noLoop();
    count = 0;
   }
   void checkHit(int z, int i){
   if (ship.get(z).y < 600){
     hity = ship.get(z).y;
     distance = dist(ship.get(z).x, hity, shots.get(i).x, shots.get(i).yloc);
     if (distance < 10){
       if (shots.get(i).yloc > 0){
         score = score + 1;
         count = count + 1;
         ship.get(z).y = random(-100,-200);     
         shots.remove(shots.get(i));
         hitcount = hitcount + 1;
       }
     }
   }
     
   }
}