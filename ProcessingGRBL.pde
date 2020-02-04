import processing.serial.*;

Serial myPort;  // Create object from Serial class

PVector bum;
PVector hole;
void setup() 
{
  size(200,200); //make our canvas 200 x 200 pixels big
 // String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  //myPort = new Serial(this, portName, 9600);
}


void draw() {
  strokeWeight(1);
 
   for (int i = 0; i < width; i=i+20){
    for (int j = 0; j < height; j=j+20) {
      bum = new PVector(i, j);
       hole = new PVector(i+random(-10.0, 10.0), j+random(-10.0, 10.0));
      beginShape();
      vertex(bum.x,bum.y);
      vertex(hole.x,hole.y);     
      endShape(CLOSE);     
      //myPort.Write(bum.x);
       String str =  "G0 X" + bum.x + "G0 Y" + bum.y;
       println(str);
     }
    }
    fill(200, 200, 200, 20);
    rect(0, 0, width, height);

}



