import controlP5.*;
ControlP5 cp5;
int myColor = color(0, 0, 0);


int n = 6;
int d = 72;

PVector points;


void setup() {
  size(800, 800);
  cp5 = new ControlP5(this);
  pushMatrix();
  cp5.addSlider("n")
    .setPosition(100, 50)
    .setRange(0, 100)
    ;

  cp5.addSlider("d")
    .setPosition(100, 100)
    .setRange(0, 100)
    ;
  popMatrix();
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(1);

  pushMatrix();
  translate(width/2, height/2);
  noFill();

  beginShape();
  for (float i = 0; i<361; i++) {
    float k = i*d;
    float r = 250*sin(n*k);
    float x = r * cos(k);
    float y = r * sin(k);

    points = new PVector(x, y);
    curveVertex(points.x, points.y);
    String str =  "G1 X" + points.x + " " + "Y" + points.y;
    println(str);
  }
  endShape(CLOSE);
  popMatrix();
}
