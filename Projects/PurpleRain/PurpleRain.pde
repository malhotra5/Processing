Drop[] obj = new Drop[700];
void setup(){
  surface.setSize(600,600);
  for (int i = 0; i < obj.length; i++){
    obj[i] = new Drop(); 
  }
}
void draw(){
  background(230,230,250);
  for (int i = 0; i < obj.length; i++){
    obj[i].fall();
    obj[i].show();
  }
}