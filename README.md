// Arduino Code
// Im making a toggle controller that should move an ellipse in Processing.
// The toggle is connected to A0 and A1 that give me the X and Y values that I then send to Processing using Serial.Write



void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT); 
}

void loop(){

  int xValue = analogRead(A0)/4;        
  int yValue = analogRead(A1)/4;  
  
  
  Serial.write(xValue);
  Serial.write(yValue);


  delay(100);
}
