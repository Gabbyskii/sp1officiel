// Declare PImage variables for each group
   
void setup() {
  size(900, 450);
  background(#0E3571);
  
 }
  

void draw() {
 // Line in middle of screen
  stroke(255);
  strokeWeight(3);
  line(450, 0, 450, 600);
  
  println("my code works");
  
  // Country names in group A - top left: 
  String[] groupA = {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"};
  //PImage[] flagsA = {russiaFlag, saudiArabiaFlag, egyptFlag, uruguayFlag};
  int i = 0;
  int space = 5;
  
  // Loop to draw rectangles
  for (String countryName : groupA) {
    int yPos = 50 + i * (40 + space);
    
    fill(255);
    rect(20, yPos, 410, 30);
    
    
    fill(0);
    textSize(20);
    text(countryName, 120, yPos + 10, 300, 90);
    i++; 
  }
    
 // Country names in group B - bottom left: 
  String[] groupB = {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"};
  //PImage[] flagsB = {portugalFlag, spainFlag, moroccoFlag, iranFlag};
  int f = 0;
  int spaceB = 5;
  
  // Loop to draw rectangles
  for (String countryName : groupB) {
    fill(255);
    rect(20, 270 + f * (40 + spaceB), 410, 30);
    fill(0);
    textSize(20);
    text(countryName, 120, 280 + f * (40 + spaceB), 300, 90);
    f++; 
   }
   
   // Country names in group C - top right: 
  String[] groupC = {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"};
 // PImage[] flagsC = {franceFlag, australiaFlag, peruFlag, denmarkFlag};
  int g = 0;
  int spaceC = 5;
  
  // Loop to draw rectangles
  for (String countryName : groupC) {
    fill(255);
    rect(470, 50 + g * (40 + spaceC), 410, 30);
    fill(0);
    textSize(20);
    text(countryName, 550, 60 + g * (40 + spaceC), 300, 90);
    g++; 
  }
  
  // Country names in group D - bottom right: 
  String[] groupD = {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"};
 // PImage[] flagsD = {argentinaFlag, icelandFlag, croatiaFlag, nigeriaFlag};
  int h = 0;
  int spaceD = 5;
  
  // Loop to draw rectangles
  for (String countryName : groupD) {
    fill(255);
    rect(470, 270 + h * (40 + spaceD), 410, 30);
    fill(0);
    textSize(20);
    text(countryName, 550, 290 + h * (40 + spaceD));
    h++; 
  }
  // Group labels
  fill(255);
  textSize(20);
  stroke(2);
 //making group a & c text blue:
  fill(0, 255, 255);
  text("GROUP A", 180, 30);
  text("GROUP C", 590, 30);
 //making group b & d yellow:
  fill(255, 255, 0);
  text("GROUP B", 180, 250);
  text("GROUP D", 590, 250);
  
//GROUP A FLAGS:
  PImage russiaFlag = loadImage("Russia.png");
  image(russiaFlag, 18,50,70,30);
  
  PImage saudiArabiaFlag = loadImage("SaudiArabia.png");
  image(saudiArabiaFlag, 18, 95, 70,30);
  
  PImage egyptFlag = loadImage("Egypt.png");
  image(egyptFlag, 18, 140, 70,30);
  
  PImage uruguayFlag = loadImage("Uruguay.png");
  image(uruguayFlag, 18, 185, 70,30);
  
  
//GROUP B FLAGS:
  PImage portugalFlag = loadImage("Portugal.png");
  image(portugalFlag, 18, 270, 70,30);
  
  PImage spainFlag = loadImage("Spain.png");
  image(spainFlag, 18, 315, 70,30);
  
  PImage  moroccoFlag = loadImage("Morocco.png");
  image(moroccoFlag, 18, 360, 70,30);
  
  PImage iranFlag = loadImage("Iran.png");
  image(iranFlag, 18, 405, 70,30);
  
  
//GROUP C FLAGS:
   PImage franceFlag = loadImage("France.png");
   image(franceFlag, 468, 50, 70, 30);
   
   PImage australiaFlag = loadImage("Australia.png");
   image(australiaFlag, 468, 95, 70, 30);
   
   PImage peruFlag = loadImage("Peru.png");
   image(peruFlag, 468, 140, 70, 30);
   
   PImage denmarkFlag = loadImage("Denmark.png");
   image(denmarkFlag, 468, 185, 70, 30);

//GROUP D FLAGS:
  PImage argentinaFlag = loadImage("Argentina.png");
  image(argentinaFlag, 468,270,70,30);
  
  PImage icelandFlag = loadImage("Iceland.png");
  image(icelandFlag, 468, 315,70,30);
  
  PImage croatiaFlag = loadImage("Croatia.png");
  image(croatiaFlag, 468, 360,70,30);
 
  PImage nigeriaFlag = loadImage("Nigeria.png");
  image(nigeriaFlag, 468, 405,70,30);
  
  
}
  
