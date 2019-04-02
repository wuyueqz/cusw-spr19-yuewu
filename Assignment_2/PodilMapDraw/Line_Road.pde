ArrayList<Road> roads; 

class Road{
  ArrayList<PVector>coordinates;
  
  Road(){}
  
  Road(ArrayList<PVector> coords){
    coordinates =  coords;
  }
  
  void draw(){

    for(int i = 0; i<coordinates.size()-1; i++){
        PVector screenStart = map.getScreenLocation(coordinates.get(i));
        PVector screenEnd = map.getScreenLocation(coordinates.get(i+1));
        strokeWeight(1);
        stroke(road_color);
        line(screenStart.x, screenStart.y, screenEnd.x, screenEnd.y);
        
        float t1 = (frameCount/10.0)%1;

        float x1 = screenStart.x + (screenEnd.x - screenStart.x)*t1;
        float y1 = screenStart.y + (screenEnd.y - screenStart.y)*t1;
        
        float r = 10*random(150,250)/250;
 
        fill(250,214,random(0,250), 200);
        noStroke();
        if(mouseX - 100 < x1 && x1 < mouseX + 100 && mouseY - 100 < y1 && y1 < mouseY + 100)
          {       
          ellipse(x1, y1, 6, 6);
          };
        }
  }
}
