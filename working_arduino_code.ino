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

