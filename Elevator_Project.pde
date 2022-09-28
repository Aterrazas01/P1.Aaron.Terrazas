
int rectX, rectY;
int rectBX, rectBY;
int rect1X, rect1Y;
int rect2X, rect2Y;
int rect3X, rect3Y;
int rect4X, rect4Y;
int rect5X, rect5Y;
int rect6X, rect6Y;
int rectAlarmX, rectAlarmY;
int rectCallX, rectCallY;
int rectOpenX, rectOpenY;
int rectCloseX, rectCloseY;
int circleBX, circleBY;
int circle1X, circle1Y;
int circle2X, circle2Y;
int circle3X, circle3Y;
int circle4X, circle4Y;
int circle5X, circle5Y;
int circle6X, circle6Y;
int circleCallX, circleCallY;
int circleAlarmX, circleAlarmY;
int circleOpenX, circleOpenY;
int circleCloseX, circleCloseY;
int circleSize = 65;

int rectSize = 100;
color labelColor;
color buttonHighlight;
color currentColor;
color buttonColor;
color buttonPressed;
color buttonB,button1,button2, button3,button4,button5,button6,buttonOpen,buttonClose,buttonAlarm,buttonCall;
boolean circleOverB = false;
boolean circleOver1 = false;
boolean circleOver2 = false;
boolean circleOver3 = false;
boolean circleOver4 = false;
boolean circleOver5 = false;
boolean circleOver6 = false;
boolean circleOverCall = false;
boolean circleOverAlarm = false;
boolean circleOverOpen = false;
boolean circleOverClose = false;

PImage MetalBG;


void setup(){
  size(1000,1000);
  currentColor = color(1);
  labelColor = color(0);
  buttonHighlight = color(204,229,255);
  buttonColor = color(192,192,192);
  buttonPressed = color(255,51,51);
  buttonB = button1 = button2 = button3 = button4 = button5 = button6 = buttonOpen= buttonClose = buttonAlarm= buttonCall = buttonColor;
  MetalBG = loadImage("MetalBG.png");
  MetalBG.resize(1000,1000);
  //Arrow Indicator
  rectX = width/2-rectSize-80;
  rectY = height/2-rectSize/2-440;
  //Basement Button
  circleBX = width/2+circleSize/2-400;
  circleBY = height/2+400;
  rectBX = width/2-rectSize-280;
  rectBY = height/2-rectSize/2+425;
  ellipseMode(CENTER);
  //First Floor Button
  circle1X = width/2+circleSize/2-400;
  circle1Y = height/2+300;
  rect1X = width/2-rectSize-280;
  rect1Y = height/2-rectSize/2+325;
  ellipseMode(CENTER);
  //Second Floor Button
  circle2X = width/2+circleSize/2-400;
  circle2Y = height/2+200;
  rect2X = width/2-rectSize-280;
  rect2Y = height/2-rectSize/2+225;
  ellipseMode(CENTER);
  //Third Floor Button
  circle3X = width/2+circleSize/2-400;
  circle3Y = height/2+100;
  rect3X = width/2-rectSize-280;
  rect3Y = height/2-rectSize/2+125;
  ellipseMode(CENTER);
  //Fourth Floor Button
  circle4X = width/2+circleSize/2-400;
  circle4Y = height/2;
  rect4X = width/2-rectSize-280;
  rect4Y = height/2-rectSize/2+25;
  ellipseMode(CENTER);
  //Fifth Floor Button
  circle5X = width/2+circleSize/2-400;
  circle5Y = height/2-100;
  rect5X = width/2-rectSize-280;
  rect5Y = height/2-rectSize/2-75;
  ellipseMode(CENTER);
  //Sixth Floor Button
  circle6X = width/2+circleSize/2-400;
  circle6Y = height/2-200;
  rect6X = width/2-rectSize-280;
  rect6Y = height/2-rectSize/2-175;
  ellipseMode(CENTER);
  //Open Door Button
  circleOpenX = width/2+circleSize/2+350;
  circleOpenY = height/2-200;
  rectOpenX = width/2-rectSize+280;
  rectOpenY = height/2-rectSize/2-175;
  ellipseMode(CENTER);
  //Close Door Button
  circleCloseX = width/2+circleSize/2+350;
  circleCloseY = height/2-100;
  rectCloseX = width/2-rectSize+280;
  rectCloseY = height/2-rectSize/2-75;
  ellipseMode(CENTER);
  //Alarm Button
  circleAlarmX = width/2+circleSize/2+350;
  circleAlarmY = height/2+125;
  rectAlarmX = width/2-rectSize+280;
  rectAlarmY = height/2-rectSize/2+150;
  ellipseMode(CENTER);
   //Call Button
  circleCallX = width/2+circleSize/2+350;
  circleCallY = height/2+225;
  rectCallX = width/2-rectSize+280;
  rectCallY = height/2-rectSize/2+250;
  ellipseMode(CENTER);
}

void draw() {
  update(mouseX, mouseY);
  image(MetalBG,0,0);
  fill(labelColor);
  stroke(255);
  rect(rectX, rectY, rectSize+250, rectSize+100);
  fill(labelColor);
  stroke(255);
  rect(rectBX, rectBY, rectSize+90, rectSize-45);
  fill(labelColor);
  stroke(255);
  rect(rect1X, rect1Y, rectSize+90, rectSize-45);
  fill(labelColor);
  stroke(255);
  rect(rect2X, rect2Y, rectSize+90, rectSize-45);
  fill(labelColor);
  stroke(255);
  rect(rect3X, rect3Y, rectSize+90, rectSize-45);
  fill(labelColor);
  stroke(255);
  rect(rect4X, rect4Y, rectSize+90, rectSize-45);
  fill(labelColor);
  stroke(255);
  rect(rect5X, rect5Y, rectSize+90, rectSize-45);
  fill(labelColor);
  stroke(255);
  rect(rect6X, rect6Y, rectSize+90, rectSize-45);
  fill(labelColor);
  stroke(255);
  rect(rectOpenX, rectOpenY, rectSize+90, rectSize-45);
  fill(labelColor);
  stroke(255);
  rect(rectCloseX, rectCloseY, rectSize+90, rectSize-45);
  fill(labelColor);
  stroke(255);
  rect(rectAlarmX, rectAlarmY, rectSize+90, rectSize-45);
   fill(labelColor);
  stroke(255);
  rect(rectCallX, rectCallY, rectSize+90, rectSize-45);
  //Basement Button
    if (circleOverB) {
    fill(buttonHighlight);
  } else {
    fill(buttonB);
  }
  stroke(255);
  ellipse(circleBX, circleBY, circleSize, circleSize);
  //First floor button
  if (circleOver1) {
    fill(buttonHighlight);
  } else {
    fill(button1);
  }
  stroke(255);
  ellipse(circle1X, circle1Y, circleSize, circleSize);
  //Second Floor Button
  if (circleOver2) {
    fill(buttonHighlight);
  } else {
    fill(button2);
  }
  stroke(255);
  ellipse(circle2X, circle2Y, circleSize, circleSize);
  //Third Floor Button
  if (circleOver3) {
    fill(buttonHighlight);
  } else {
    fill(button3);
  }
  stroke(255);
  ellipse(circle3X, circle3Y, circleSize, circleSize);
  //Fourth Floor Button
  if (circleOver4) {
    fill(buttonHighlight);
  } else {
    fill(button4);
  }
  stroke(255);
  ellipse(circle4X, circle4Y, circleSize, circleSize);
  //Fifth Floor Button
  if (circleOver5) {
    fill(buttonHighlight);
  } else {
    fill(button5);
  }
  stroke(255);
  ellipse(circle5X, circle5Y, circleSize, circleSize);
  //Sixth Floor Button
  if (circleOver6) {
    fill(buttonHighlight);
  } else {
    fill(button6);
  }
  stroke(255);
  ellipse(circle6X, circle6Y, circleSize, circleSize);
  if (circleOverOpen) {
    fill(buttonHighlight);
  } else {
    fill(buttonOpen);
  }
  stroke(255);
  ellipse(circleOpenX, circleOpenY, circleSize, circleSize);
  if (circleOverClose) {
    fill(buttonHighlight);
  } else {
    fill(buttonClose);
  }
  stroke(255);
  ellipse(circleCloseX, circleCloseY, circleSize, circleSize);
  if (circleOverAlarm) {
    fill(buttonHighlight);
  } else {
    fill(buttonAlarm);
  }
  stroke(255);
  ellipse(circleAlarmX, circleAlarmY, circleSize, circleSize);
  if (circleOverCall) {
    fill(buttonHighlight);
  } else {
    fill(buttonCall);
  }
  stroke(255);
  ellipse(circleCallX, circleCallY, circleSize, circleSize);
  
  //text fields 
  fill(255);
  textSize(25);
  text("Basement",175,910);
  text("1st Floor",175,810);
  text("2nd Floor",175,710);
  text("3rd Floor",175,610);
  text("4th Floor",175,510);
  text("5th Floor",175,410);
  text("6th Floor",175,310);
  text("Open",750,310);
  text("Close",750,410);
  text("Alarm",750,635);
  text("Call",750,735);
}


void update(int x, int y) {
  if ( overCircle(circleBX, circleBY, circleSize) ) {
    circleOverB = true;
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOverOpen = false;
    circleOverClose = false;
    circleOverAlarm = false;
    circleOverCall = false;
  } 
  else if ( overCircle(circle1X, circle1Y, circleSize) ){
    circleOver1 = true;
    circleOverB = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOverOpen = false;
    circleOverClose = false;
    circleOverAlarm = false;
    circleOverCall = false;
  }
   else if ( overCircle(circle2X, circle2Y, circleSize) ){
    circleOver2 = true;
    circleOverB = false;
    circleOver1 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOverOpen = false;
    circleOverClose = false;
    circleOverAlarm = false;
    circleOverCall = false;
  }
   else if ( overCircle(circle3X, circle3Y, circleSize) ){
    circleOver3 = true;
    circleOverB = false;
    circleOver1 = false;
    circleOver2 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOverOpen = false;
    circleOverClose = false;
    circleOverAlarm = false;
    circleOverCall = false;
  }
    else if ( overCircle(circle4X, circle4Y, circleSize) ){
    circleOver4 = true;
    circleOverB = false;
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOverOpen = false;
    circleOverClose = false;
    circleOverAlarm = false;
    circleOverCall = false;
  }
    else if ( overCircle(circle5X, circle5Y, circleSize) ){
    circleOver5 = true;
    circleOverB = false;
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver6 = false;
    circleOverOpen = false;
    circleOverClose = false;
    circleOverAlarm = false;
    circleOverCall = false;
  }
    else if ( overCircle(circle6X, circle6Y, circleSize) ){
    circleOver6 = true;
    circleOverB = false;
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOverOpen = false;
    circleOverClose = false;
    circleOverAlarm = false;
    circleOverCall = false;
  }
  else if ( overCircle(circleOpenX, circleOpenY, circleSize) ){
    circleOverOpen = true;
    circleOverB = false;
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOverClose = false;
    circleOverAlarm = false;
    circleOverCall = false;
       
  }
  else if ( overCircle(circleCloseX, circleCloseY, circleSize) ){
    circleOverClose = true;
    circleOverB = false;
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOverOpen = false;
    circleOverAlarm = false;
    circleOverCall = false;
  }
  else if ( overCircle(circleAlarmX, circleAlarmY, circleSize) ){
    circleOverAlarm = true;
    circleOverB = false;
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOverOpen = false;
    circleOverClose = false;
    circleOverCall = false;
  }
  else if ( overCircle(circleCallX, circleCallY, circleSize) ){
    circleOverCall = true;
    circleOverB = false;
    circleOver1 = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOverOpen = false;
    circleOverClose = false;
    circleOverAlarm = false;
  }
  else {
    circleOverB = circleOver1 = circleOver2 = circleOver3 = circleOver4 = circleOver5 = circleOver6 = circleOverOpen = circleOverClose = circleOverAlarm = circleOverCall = false;
  }
}

void mousePressed() {
  if (circleOverB) {
    if(buttonB == buttonColor){
      buttonB = buttonPressed;
    }
    else{
     buttonB = buttonColor; 
    }
  } 
  if (circleOver1) {
    if(button1 == buttonColor){
      button1 = buttonPressed;
    }
    else{
     button1 = buttonColor; 
    }
  } 
   if (circleOver2) {
    if(button2 == buttonColor){
      button2 = buttonPressed;
    }
    else{
     button2 = buttonColor; 
    }
  }  
  if (circleOver3) {
    if(button3 == buttonColor){
      button3 = buttonPressed;
    }
    else{
     button3 = buttonColor; 
    }
  } 
  if (circleOver4) {
    if(button4 == buttonColor){
      button4 = buttonPressed;
    }
    else{
     button4 = buttonColor; 
    }
  }
   if (circleOver5) {
    if(button5 == buttonColor){
      button5 = buttonPressed;
    }
    else{
     button5 = buttonColor; 
    }
  }
   if (circleOver6) {
    if(button6 == buttonColor){
      button6 = buttonPressed;
    }
    else{
     button6 = buttonColor; 
    }
  }
   if (circleOverOpen) {
    if(buttonOpen == buttonColor){
      buttonOpen = buttonPressed;
    }
    else{
     buttonOpen = buttonColor; 
    }
  }
   if (circleOverClose) {
    if(buttonClose == buttonColor){
      buttonClose = buttonPressed;
    }
    else{
     buttonClose = buttonColor; 
    }
  } 
   if (circleOverAlarm) {
    if(buttonAlarm == buttonColor){
      buttonAlarm = color(255,255,152);
    }
    else{
     buttonAlarm = buttonColor; 
    }
  } 
   if (circleOverCall) {
    if(buttonCall == buttonColor){
      buttonCall = color(235,235,235);
    }
    else{
     buttonCall = buttonColor; 
    }
  } 
}


boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
