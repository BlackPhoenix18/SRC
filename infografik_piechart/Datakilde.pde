class Datakilde {
  
  Table table;
  ArrayList<data> dataListe = new ArrayList<data>();
  void loadData() {
   table = loadTable("musikvaner-16-24.csv","header");
   for(TableRow r : table.rows()){
  int tid = r.getInt(2);
  int Klassisk = r.getInt(3);
  int GratisStreaming = r.getInt(4);
  int BetaltStreaming = r.getInt(5);
  int Podcast = r.getInt(6);
  int Radio = r.getInt(7);
  int Tv = r.getInt(8);
  int Andre = r.getInt(9);
  int ingenMusik = r.getInt(10);
 data d = new data(Klassisk, GratisStreaming, BetaltStreaming, Podcast, Radio, Tv, Andre, ingenMusik, tid);
  dataListe.add(d);
  println(d.tid,d.Klassisk);
 }
}    
 
  
  
}
