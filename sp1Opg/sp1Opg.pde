//Erklærer image-arrays til flagene i hver gruppe
PImage[] flagsA, flagsB, flagsC, flagsD;
//Initialisere min class til gruppe-overskrifter
Groups groupLabels;
//Skrifttype til overskrifterne:
PFont boldFont;

void setup() {
  size(900, 450);
  background(#0E3571);
  
//Opretter et objekt af klassen Groups:
  groupLabels = new Groups();
  boldFont = loadFont("AvenirNextCondensed-Bold-20.vlw");
  
  
//Indlæser alle flag-bilag én gang i setup:
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
  //test for at se om draw stadig løber
  println("Draw is running");

//String array af landenavnene for hver gruppe
  String[] groupA = {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"};
  String[] groupB = {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"};
  String[] groupC = {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"};
  String[] groupD = {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"};
  
 
//Lodret hvid linje i midten af skærmen
  stroke(255);
  strokeWeight(3);
  line(450, 0, 450, 600);
  
 //noStroke omkring de hjørne-bokse i lyseblå  & gul
  noStroke();
  
//Lande i group A - øverst venstre hjørne: 
  int i = 0;
  int space = 5;
  
  //for-loop - tegner rects og flag for group A
  for (String countryName : groupA) {
    int yPos = 50 + i * (40 + space);
    
    //Tegner hvid rect først
    fill(255);
    rect(20, yPos, 410, 33);
    
    
   //if-statement tegner flaget over rect, hvis flag != intet. - den eneste løsning der fungerede
    if (flagsA[i] != null) {
      image(flagsA[i], 18, yPos, 70, 34);
    }
    
    //Lyseblå hjørne-boks for Group A
    fill(0, 255, 255);
    rect(420, yPos, 10, 33);
        
   //Landenavn
    fill(0);
    textSize(20);
    text(countryName, 100, yPos + 24);
    
    i++;
  }
    
//Lande i group B - nederst venstre: 
  int f = 0;
  int spaceB = 5;
  
  //for-loop - tegner rects og flag for group B
  for (String countryName : groupB) {
    int yPos = 270 + f * (40 + spaceB);
    
   //Tegner hvid rect først
    fill(255);
    rect(20, yPos, 410, 33);
    
    //if-statement tegner flaget over rect
    if (flagsB[f] != null) {
      image(flagsB[f], 18, yPos, 70, 34);
    }
    
    //Gul hjørne-boks for Group B
    fill(255, 255, 0);
    rect(420, yPos, 10, 33);
    
    //Landenavn
    fill(0);
    textSize(20);
    text(countryName, 100, yPos + 24);
    
    f++; 
  }
   
 //Lande i group C - øverst højre: 
  int g = 0;
  int spaceC = 5;
  
  //for-loop - tegner rects og flag for group C:
  for (String countryName : groupC) {
    int yPos = 50 + g * (40 + spaceC);
    
    //Tegner hvid rect først
    fill(255);
    rect(470, yPos, 410, 33);
    
   //if-statement tegner flaget over rect
    if (flagsC[g] != null) {
      image(flagsC[g], 468, yPos, 70, 34);
     }
    
    //Lyseblå hjørne-boks for Group C
    fill(0, 255, 255);
    rect(870, yPos, 10, 33);
   
   //Landenavn
    fill(0);
    textSize(20);
    text(countryName, 550, yPos + 24);
    
    g++; 
  }
  
//Lande i group D - nederst højre: 
  int h = 0;
  int spaceD = 5;
  
  //for-loop - tegner rects og flag for group D
  for (String countryName : groupD) {
    int yPos = 270 + h * (40 + spaceD);
    
    //Tegner hvid rect først
    fill(255);
    rect(470, yPos, 410, 33);
    
    //if-statement tegner flaget over rect
    if (flagsD[h] != null) {
      image(flagsD[h], 468, yPos, 70, 34);
      }
    
    //Gul hjørne-boks for Group D
    fill(255, 255, 0);
    rect(870, yPos, 10, 33);
    
    //Landenavn
    fill(0);
    textSize(20);
    text(countryName, 550, yPos + 24);
    
    h++; 
  }
 //Viser gruppeoverskrifter:
 groupLabels.displayGroups();
  
}


 
