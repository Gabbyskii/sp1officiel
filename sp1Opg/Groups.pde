//Klasse der tegner overskrifterne for grupperne A,B,C,D:
class Groups {
  
  void displayGroups() { 
   //Sætter tyk tekst til kun gruppe-navnene
    textFont(boldFont);
    textSize(20);
    
    //Sætter group A & C skrift til lyseblå:
    fill(0, 255, 255);
    text("GROUP A", 155, 30);
    text("GROUP C", 635, 30);
    
    //Sætter group B & D skrift til yellow:
    fill(255, 255, 0);
    text("GROUP B", 155, 250);
    text("GROUP D", 635, 250);
    
    //Skifter tilbage til standard skrift-type for alt andet tekst:
    textFont(createFont("Arial", 20));
    textSize(20);
  }
}
