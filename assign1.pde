
PImage bg;
PImage soil;
PImage life;
PImage groundhog;
PImage robot;


float robotXi=floor(random(2,8));
float robotX=80*robotXi;
float robotYi=floor(random(2,6));
float robotY=80*robotYi;
float laserX=robotX+25;
float laserY=robotY+32;
float laserWidth=10;
float laserMaxWidth=40;
float laserSpeed=2;
float laserRange=robotX-160;


PImage soldier;
float soldierX=-80;
float soldierXSpeed=3;
float soldierYi=floor(random(2,6));
float soldierY=80*soldierYi;



void setup() {
	size(640, 480, P2D);
  bg=loadImage("img/bg.jpg");
  soil=loadImage("img/soil.png");
  life=loadImage("img/life.png");
  groundhog=loadImage("img/groundhog.png");
  robot=loadImage("img/robot.png");
  soldier=loadImage("img/soldier.png");
  

  
  
}

void draw() {
  //background
  image(bg,0,0,640,480);
  image(soil,0,160,640,320);
  image(life,10,10);
  image(life,80,10);
  image(life,150,10);
  //lawn
  noStroke();
  fill(124,204,25);
  rect(0,145,640,15);
  //sun
  strokeWeight(5);
  stroke(255,255,0);
  fill(253,184,19);
  ellipse(590,50,120,120);
  
  
  image(groundhog,280,80);
  
  //laser
  noStroke();
  fill(255,0,0);
  rect(laserX,laserY,laserWidth,10,5);
  laserX-=laserSpeed;
  if (laserWidth<40){
    laserWidth++;
  }
  else{
    laserWidth=laserMaxWidth;
  }
  
  if(laserX<laserRange){
    laserX=robotX+20;
    laserWidth=10;
  }
    
  
  
  

  image(robot,robotX,robotY);
  
  
  
  
  image(soldier,soldierX,soldierY);
  soldierX+=soldierXSpeed;
  if(soldierX>640){
    soldierX=-80;
  }
  
  
  

  
}
