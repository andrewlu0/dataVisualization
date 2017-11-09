import peasy.*;

PImage world;
Table table;

PeasyCam cam;

ArrayList <Meteor> allMeteors;

void setup() {


  size(2000, 1000, OPENGL);
  cam = new PeasyCam(this,100);
  world = loadImage("data/world.jpg");
  world.resize(2000, 1000);
  
  table = loadTable("data/meteorite-landings.csv", "header");
  allMeteors = new ArrayList<Meteor>();
  for (TableRow row : table.rows()) {
    String name = row.getString("name");
    float mass = row.getFloat("mass");
    float reclat = row.getFloat("reclat");
    float reclong = row.getFloat("reclong");

    //latitude from (-90,90), longitude from (-180,180)
    float mapX = map(reclong, -180, 180, 0, width);
    float mapY = map(reclat, 90, -90, 0, height);
    float mapMass = map(mass, 0, 5000000, 1.0, 4.0);
    
    Meteor met = new Meteor(mapX,mapY,mapMass);
    allMeteors.add(met);
    
  }
}

void draw() {

  //background(world);
  background(0);
  smooth();
  
  beginShape();
  texture(world);
  //vertex (x,y,z    u,v); 
  vertex(0,0,0,     0,0);
  vertex(2000,0,0,    2000,0);
  vertex(2000,1000,0,    2000,1000);
  vertex(0,1000,0,   0,1000);
  
  endShape();
  noFill();
  
  for (Meteor m : allMeteors){
    m.display();
  }
  
}