class Meteor{
  
  float x;
  float y;
  float z=0;
  float mass;
  String name;
  
  Meteor(float _x,float _y,float _mass){
    x = _x;
    y = _y;
    mass = _mass;
  }
  
  void display(){
    
    stroke(255, 255, 255, 90);
    strokeWeight(5);
    //point(x,y,z);
    //strokeWeight(1);
    beginShape();
    vertex(x-1,y-1,0);
    vertex(x-1,y+1,0);
    vertex(x+1,y+1,0);
    vertex(x+1,y-1,0);
    vertex(x+1,y-1,mass*3);
    vertex(x+1,y+1,mass*3);
     vertex(x+1,y+1,0);
     vertex(x+1,y+1,mass*3);
    vertex(x-1,y+1,mass*3);
    vertex(x-1,y+1,0);
    vertex(x-1,y+1,mass*3);
    vertex(x-1,y-1,mass*3);
    vertex(x-1,y-1,0);
    vertex(x-1,y-1,mass*3);
    vertex(x+1,y-1,mass*3);
    
    endShape();
    
    //line(x,y,z,x,y,z+mass);
  }
  
  
}