ArrayList<Water> waters; 

class Water{
  ArrayList<PVector>coordinates;
  
  Water(){}
  
  Water(ArrayList<PVector> coords){
    coordinates =  coords;
  }
  
  void draw(){
    strokeWeight(100);
    stroke(water_color);
    for(int i = 0; i<coordinates.size()-1; i++){
        PVector screenStart = map.getScreenLocation(coordinates.get(i));
        PVector screenEnd = map.getScreenLocation(coordinates.get(i+1));
        line(screenStart.x, screenStart.y, screenEnd.x, screenEnd.y);
  }

  }
}
