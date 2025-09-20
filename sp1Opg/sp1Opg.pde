//Declare PImage variables for each group:
PImage[] flagsA, flagsB, flagsC, flagsD;
   
void setup() {
  size(900, 450);
  background(#0E3571);
  
  //Load all flag images once in setup:
 flagsA = new PImage[4];
  flagsA[0] = loadImage("Russia.png");
  flagsA[1] = loadImage("SaudiArabia.png");
  flagsA[2] = loadImage("Egypt.png");
  flagsA[3] = loadImage("Uruguay.png");
  
 flagsB = new PImage[4];
  flagsB[0] = loadImage("Portugal.png");
  flagsB[1] = loadImage("Spain.png");
  flagsB[2] = loadImage("Morocco.png");
  flagsB[3] = loadImage("Iran.png");
  
 flagsC = new PImage[4];
  flagsC[0] = loadImage("France.png");
  flagsC[1] = loadImage("Australia.png");
  flagsC[2] = loadImage("Peru.png");
  flagsC[3] = loadImage("Denmark.png");
  
 flagsD = new PImage[4];
  flagsD[0] = loadImage("Argentina.png");
  flagsD[1] = loadImage("Iceland.png");
  flagsD[2] = loadImage("Croatia.png");
  flagsD[3] = loadImage("Nigeria.png");
}

void draw() {
  background(#0E3571);
  
  println("Draw function is running!");
 
  String[] groupA = {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"};
  String[] groupB = {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"};
  String[] groupC = {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"};
  String[] groupD = {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"};
  
  println("Arrays created, groupA length");
 
//Line in middle of screen
  stroke(255);
  strokeWeight(3);
  line(450, 0, 450, 600);
  
//Country names in group A - top left: 
  int i = 0;
  int space = 5;
  
  println("About to start Group A loop");
  
  //Loop to draw rects and flags for Group A
  for (String countryName : groupA) {
    int yPos = 50 + i * (40 + space);
    
    //Draws rects first
    fill(255);
    rect(20, yPos, 410, 30);
    
    // DEBUG: Print flag loading status
    println("Group A, index " + i + ": flag is " + (flagsA[i] != null ? "loaded" : "NULL"));
    
    
    //Draw flag on top of rect (if it exists)
    if (flagsA[i] != null) {
      image(flagsA[i], 18, yPos -1, 70, 33);
    } else {
      println("Flag is NULL for " + countryName);
    }
    
    // Draw cyan corner box for Group A
    fill(0, 255, 255);
    rect(415, yPos, 15, 30);
    
    //Country name
    fill(0);
    textSize(20);
    text(countryName, 120, yPos + 20);
    
    i++;
  }
    
  //Country names in group B - bottom left: 
  int f = 0;
  int spaceB = 5;
  
  // Loop to draw rectangles and flags for Group B
  for (String countryName : groupB) {
    int yPos = 270 + f * (40 + spaceB);
    
    fill(255);
    rect(20, yPos, 410, 30);
    
    //Draw flag on top of rect
    if (flagsB[f] != null) {
      image(flagsB[f], 18, yPos -1, 70, 33);
    }
    
    // Draw yellow corner box for Group B
    fill(255, 255, 0);
    rect(415, yPos, 15, 30);
    
    fill(0);
    textSize(20);
    text(countryName, 120, yPos + 20);
    
    f++; 
  }
   
  //Country names in group C - top right: 
  int g = 0;
  int spaceC = 5;
  
  //Loop to draw rectangles and flags for Group C:
  for (String countryName : groupC) {
    int yPos = 50 + g * (40 + spaceC);
    
    fill(255);
    rect(470, yPos, 410, 30);
    
    //Draw flag on top of rect
    if (flagsC[g] != null) {
      image(flagsC[g], 468, yPos-1.5, 70, 34);
    }
    
    // Draw cyan corner box for Group C
    fill(0, 255, 255);
    rect(865, yPos, 15, 30);
    
    fill(0);
    textSize(20);
    text(countryName, 550, yPos + 20);
    
    g++; 
  }
  
  //Country names in group D - bottom right: 
  int h = 0;
  int spaceD = 5;
  
  //Loop to draw rectangles and flags for Group D:
  for (String countryName : groupD) {
    int yPos = 270 + h * (40 + spaceD);
    
    fill(255);
    rect(470, yPos, 410, 30);
    
    //Draw flag on top of rect
    if (flagsD[h] != null) {
      image(flagsD[h], 468, yPos-1.5, 70, 34);
    }
    
    // Draw yellow corner box for Group D
    fill(255, 255, 0);
    rect(865, yPos, 15, 30);
    
    fill(0);
    textSize(20);
    text(countryName, 550, yPos + 20);
    
    h++; 
  }
  
  //Group labels:
  fill(255);
  textSize(20);
  stroke(2);
  
  //Making group A & C text cyan:
  fill(0, 255, 255);
  text("GROUP A", 180, 30);
  text("GROUP C", 590, 30);
  
  //Making group B & D text yellow:
  fill(255, 255, 0);
  text("GROUP B", 180, 250);
  text("GROUP D", 590, 250);
}
  
