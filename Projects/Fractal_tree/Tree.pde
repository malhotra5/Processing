class fractalTree{
  float right = 0;
  void show(float len){
    if (right%2 == 0){
      line(0,0,0,-len);
      translate(0,-len);
      rotate(PI/4);
      len = len * 0.67;
      if (len > 4){
        show(len);
        right = right + 1;
      }
    }
    if (right%2 == 1){
      translate(0,len);
      rotate(-PI/4);
      line(0,0,0,len);
      translate(0,-len);
      len = len * 0.67;
      right = right + 1;
      if (len > 4){
        show(len);
      }
    }
  }
}