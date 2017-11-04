// Once the X and Y Values come into processing I want them to 
// be used to move an ellipse. Like a cursor of sorts
// I also have text at the top left of the screen that tells me what the current X and Y values are


import processing.serial.*;

Serial myPort;
float xPos = 0;
float yPos = 0;
PFont f; // font



void setup(){
 size(800,800);
 
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  
  f = createFont("Arial", 16, true); // Arial, 16px, anti-aliasing
  textFont(f, 16); // size of the font
  

}

void serialEvent (Serial myPort){
 
  int inByte = myPort.read();
  
  println(inByte);
  
  yPos = height - inByte;
  xPos = height - inByte;
  
}
  
void draw(){
  fill(0); // fills the sketch with a color
  clear(); // clears the sketch of any color
 
  fill(255); // fills the sketch with a color so that the screen keeps refereshing
  
  text("AnalogX="+(xPos)+" AnalogY="+(yPos),10,20); //text display at the top
  
  ellipse(xPos/2, 512-(yPos/2), 50, 50); //position of the ellipse
   
 
 
 }
  
