import processing.serial.*;

Serial myPort;
float xPos = 0;
float yPos = 0;
PFont f; // defincja zmiennej czcionki



void setup(){
 size(800,800);
 
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  
  f = createFont("Arial", 16, true); // Arial, 16px, anti-aliasing
  textFont(f, 16); // rozmiar 16px
  

}

void serialEvent (Serial myPort){
 
  int inByte = myPort.read();
  
  println(inByte);
  
  yPos = height - inByte;
  xPos = height - inByte;
  
}
  
void draw(){
  fill(0); // ustawiamy kolor wypełnienia na czarny
  clear(); // czyścimy ekran
 
  fill(255); // ustawiamy kolor wypełnienia na biały
  text("AnalogX="+(xPos)+" AnalogY="+(yPos),10,20);
  
  ellipse(xPos/2, 512-(yPos/2), 50, 50);
   
  
   
  
 
 }
  