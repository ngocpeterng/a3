//Code Literacy A3
//Birthday Cake 
//Peter Nguyen 

int value = #f0b27a;
int value2 = 0;

int chocobrown = #332421;
int lightchoco = #805a46;
int bodycolor = #fadbd8;

int strawb = #df8d9e;
int perrywinkle = #c4d7f2;
int cherry = #b63d42;


Drop[] drops = new Drop[100]; //array for confetti
Smoke[] smokes = new Smoke[5]; //array for smoke

void setup() {
  size (500, 500);

  for (int i = 0; i < drops.length; i++) {
  drops[i] = new Drop();
  }
  
  for (int i = 0; i < smokes.length; i++) {
    smokes[i] = new Smoke();
  }
  
}



void draw() {
  
  background(#cbd6c8); 
  
  fill(#ffffff); //plate
  noStroke();
  ellipse(250,410,425,100);
  
  fill(bodycolor); //bottom
  noStroke();
  ellipse(250, 400,300,60);
  
  rectMode(CORNERS); //body of cake 
  fill(bodycolor);
  noStroke();
  rect(100,200,400,400);
  
  fill(strawb); //top
  noStroke();
  ellipse(250,200,300,60);
  
  strokeWeight(2); //candle Wick
  stroke(0);
  line(250,100,250,110);
  
  rectMode(CENTER); //candle Stem
  noStroke();
  fill(#ffffff);
  rect(250,150,7,80); 
  
  noStroke(); //flame
  fill(value);
  quad(250,106,242,101,250,70,258,101);
  
  noFill();  //upper mid section 
  strokeWeight(10);
  stroke(strawb);
  arc(250,250,310,80,0,PI); //3rd number is the length of the arc
  
  noFill();  //lower mid section 
  strokeWeight(10);
  stroke(strawb);
  arc(250,310,310,80,0,PI);
  
  rectMode(CORNERS); //conceal excess left
  noStroke();
  fill(#cbd6c8);
  rect(80,240,100,360);
  
  rectMode(CORNERS); //conceal excess right 
  noStroke();
  fill(#cbd6c8);
  rect(417,234,400,350);
  
  fill(perrywinkle); //right decor circles 
  noStroke();
  ellipse(250,420,45,45);
  
  fill(perrywinkle); 
  noStroke();
  ellipse(287,418,45,45);
  
  fill(perrywinkle); 
  noStroke();
  ellipse(324,414,45,45);
  
  fill(perrywinkle); 
  noStroke();
  ellipse(361,408,45,45);
  
  fill(perrywinkle); 
  noStroke();
  ellipse(398,400,45,45);
  
  fill(perrywinkle); //left decor circles 
  noStroke();
  ellipse(213,418,45,45);
  
  fill(perrywinkle); 
  noStroke();
  ellipse(176,414,45,45);
  
   fill(perrywinkle); 
  noStroke();
  ellipse(139,408,45,45);
  
   fill(perrywinkle); 
  noStroke();
  ellipse(102,400,45,45);
  

  println(mouseX,mouseY); //tracking coordinates for positioning
  
  
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall(); // sets the shape and speed of drop
    drops[i].show(); // render drop
  }

  for (int i = 0; i < smokes.length; i++) {
    smokes[i].rise() ;
    smokes[i].show() ;   
  }

//Lights
 rectMode(CORNER);  
 noStroke();
 fill(0, value2);
 rect(0,0,500,500);
 
}

void mousePressed() {
 if (value == #f0b27a) { 
   value = #cbd6c8;
}
 else {
   value = #f0b27a;
 }
 
 if (value2 == 0) {
   value2 = 175;
 }
 else {
   value2 = 0;
 }
}



void keyPressed() {
 if (bodycolor == #fadbd8) { 
   bodycolor = lightchoco;
}
 else {
   bodycolor = #fadbd8;
 }
 
 if (strawb == #df8d9e) { 
   strawb = chocobrown;
}
 else {
   strawb = #df8d9e;
 }

 if (perrywinkle == #c4d7f2) { 
   perrywinkle = cherry;
}
 else {
   perrywinkle = #c4d7f2;
 }
}
