class knap{
 int x,y; //positionen af knappen
 int b,h; //størrelsen af knappen
 boolean valgtknap; //dette skal angive om knappen er valgt eller ej
 color markeretFarve, normalFarve, valgteFarve; //dette er farverne der bruges til knapperne i forskellige tilstande
 String tekst1;
 String tekst2;
 
  
  knap(int x, int y, int h, int b, String tekst1, String tekst2){
    this.x = x;
    this.y = y;
    this.h = h;
    this.b = b;
    this.tekst1 = tekst1;
    this.tekst2 = tekst2;
    valgtknap = false;
    markeretFarve = color(14,73,117);
    normalFarve = color(13,62,99);
    valgteFarve = color(13,62,99);
  }
  //dette er knappens metode - den danner selve knapperne 
  /*jeg vil også gerne lave selve cirkeldiagrammet om til en knap
  det bliver dog for kompliceret da det er en ellipse, så en femte rect-knap vil være det næstbedste at gøre
  */
  void display(){
   fill(valgteFarve);
   rect(x,y,h,b);
   fill(255);
   textAlign(CENTER);
   textSize(20);
   text(tekst1, x + b*0.65, y + h/3.5);
   textSize(30);
   text(tekst2, x + b*1.2, y + h/4); //jeg kan sætte "" hvis jeg ikke vil have den ene eller den anden tekst vist
  }
  
  boolean museklik(){
    valgtknap = false;
    if(mouseX > x && mouseX < x + h && mouseY > y && mouseY < y + b){ //dette afgrænser knappen
      valgtknap = true;
    if(valgtknap == true){
      valgteFarve = markeretFarve;
    }
    if(valgtknap == false){
      valgteFarve = normalFarve;
    }
 
}
    return valgtknap; 
  }
}
