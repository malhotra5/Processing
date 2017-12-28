//import controlP5.*;
//ControlP5 cp5;
fractalTree obj = new fractalTree();
float len = 100;
float x = width/2;
float y = height;
float angle = PI/4;
void setup(){ 
  surface.setSize(600,600);
  //cp5 = new ControlP5(this);
  //cp5.addSlider("slider").setPosition(CENTER,CENTER).setRange(0,255).setColorValue(color(600));
 
}


void draw(){
  background(0);
  translate(width/2, height);
  stroke(255);
  strokeWeight(3);
  obj.show(len);
  

}