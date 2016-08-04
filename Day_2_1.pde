void setup() {
  frameRate(30);
  size(500, 500);
  noCursor();
}

void draw() {

  background(0);

  if (mousePressed == true) {
    fill(mouseX, mouseY, 200);
    println("i'm pressed");
  }

  if (mousePressed == false) {
    fill(random(255));
  }

  bezier(100, 250, 100, 200, 400, 200, 400, 250);  
  bezier(100, 250, 100, 300, 400, 300, 400, 250);  

  fill(0);
  ellipse(mouseX, mouseY, 50, 50);
}