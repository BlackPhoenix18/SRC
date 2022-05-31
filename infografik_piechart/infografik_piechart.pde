Datakilde gruppe1 = new Datakilde();
int aarstal = 2018;
knap knap1; //forrige medie knap
knap knap2; //næste medie knap
knap knap3; //forrige årstal knap
knap knap4; //næste årstal knap
knap knap5; //cirkeldiagram knap

void setup(){
  size (1000,960);
  background(195,255,255);
  noStroke();
  gruppe1.loadData();
  knap1 = new knap(220,40,100,75,"Forrige \nmedie",""); //jeg fandt ud af at "\n" betyder "ny linje"
  knap2 = new knap(670,40,100,75,"Næste \nmedie","");
  knap3 = new knap(70,780,250,100,"","Forrige år");
  knap4 = new knap(670,780,250,100,"","Næste år");
  
  }


void draw(){
  fill(50,112,150);
  rect(370,40,250,100); //selve mediet
  rect(370,780,250,100); //aldersgruppe
  fill(255);
  textSize(20);
  text("Aldersgruppe: 16-24 år",370 + 250/2,780 +100/1.7);
  textSize(17);
  text("Cd, vinyl eller kassettebånd",370 + 250/2, 40+100/1.8);
  stroke(0);
 ellipse(500,440,300,300);
  fill(50,112,150);
  rect(700,380,250,100);
  knap1.display();
  knap2.display();
  knap3.display();
  knap4.display();

   for(data d : gruppe1.dataListe){

if(d.tid==aarstal) {
  fill(215); 
  arc(500, 440, 300, 300, 0, 2*PI*d.Klassisk*0.01);
  fill(255);
  text(aarstal,825, 430);
 text(d.Klassisk,825,470);
 text("%",855,470);
}/*
if(d.tid==aarstal){
  fill(215);
  arc(500, 440, 300, 300,0,2*PI*d.GratisStreaming*0.01);
}
if(d.tid==aarstal){
  fill(215);
  arc(500, 440, 300, 300,0,2*PI*d.BetaltStreaming*0.01);
}*/
/*
if(d.tid==aarstal){
  fill(215);
  arc(500,440,300,300,0,2*PI*d.Podcast*0.01);
}
}*/
/*if(d.tid==aarstal){
  fill(215);
  arc(500, 440, 300, 300,0,2*PI*d.Radio*0.01);
}
if(d.tid==aarstal){
  fill(215);
  arc(500, 440, 300, 300,0,2*PI*d.Tv*0.01);
}
if(d.tid==aarstal){
  fill(215);
  arc(500, 440, 300, 300,0,2*PI*d.Andre*0.01);
}
*/
}
}
void mousePressed(){
  
  if(knap3.museklik()){
    if(aarstal >= 2019){ //hvorfor virker det her?? det får arc til at loope uden at vise hvidt hver gang den skal loope?
  aarstal = aarstal -1;
}
else{
aarstal = 2020;
}
}
if(knap4.museklik()){
  if(aarstal <= 2019){
  aarstal++;
}
else{
 aarstal = 2018;
  }
}

}
