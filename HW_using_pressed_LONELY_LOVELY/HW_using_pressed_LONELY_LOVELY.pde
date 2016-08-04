PFont f ;

void setup() {
  size(500,500);
  background(255);
  noCursor();
  f = createFont ("Arial",120,true);
}

void draw() {

  background(255);

  if (mousePressed == true) {
  fill(255,0,0);
  textFont(f);
  textAlign(CENTER);
  text ("LONLEY", width/2, height/2);

}

  if (keyPressed == true) {
  fill(0);
  textFont(f);
  textAlign(CENTER);
  text ("   VEL ", width/2, height/2);
}
 

  fill(0);
  rect(mouseX, mouseY, 3, 3);
}