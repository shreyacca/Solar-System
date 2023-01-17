/*Name: Solar system
 Description: 8 planets revolving around the sun
 
 Author: Shreya Saraf
 Email: shreyavsaraf@gmail.com
 */

float sD, mD, vD, eD, maD, jD, saD, uD, nD;
PFont Archer;

float sunSize = 60;
float mercuryDist = 50;
float venusDist = 100;
float earthDist = 150;
float marsDist = 200;
float jupiterDist = 250;
float saturnDist = 300;
float uranusDist = 350;
float neptuneDist = 400;

// Rotation start point from sun's horizontal line
float mercuryAngle = 90;
float venusAngle = 90;
float earthAngle = 90;
float marsAngle = 90;
float jupiterAngle = 90;
float saturnAngle = 90;
float uranusAngle = 90;
float neptuneAngle = 90;

boolean rotation = true; //true or false statement to initiate planets rotating

PGraphics pG;
PImage bg;

void setup() {
  size(850, 850);
  bg = loadImage("space.jpg");
  pG = createGraphics (900,900);
  Archer= createFont("ArcherMediumPro.otf", 14);
}


void draw() {
  background(bg); //background is in draw to refresh the screen everytime
  image(pG, 0,0);
   
  noStroke ();
  fill(255, 255, 0); //sun colour
  ellipse(width/2, height/2, sunSize, sunSize); // sun
  
  //orbits
  pushMatrix();
  stroke (255);
  strokeWeight(0.5);
  noFill();
  ellipse (width/2, height/2 , (mercuryDist*2), (mercuryDist*2));
  ellipse (width/2, height/2 , (venusDist*2), (venusDist*2));
  ellipse (width/2, height/2 , (earthDist*2), (earthDist*2));
  ellipse (width/2, height/2 , (marsDist*2), (marsDist*2));
  ellipse (width/2, height/2 , (jupiterDist*2), (jupiterDist*2));
  ellipse (width/2, height/2 , (saturnDist*2), (saturnDist*2));
  ellipse (width/2, height/2 , (uranusDist*2), (uranusDist*2));
  ellipse (width/2, height/2 , (neptuneDist*2), (neptuneDist*2));
  popMatrix();

  //mercury
  pushMatrix();
  noStroke ();
  fill(160, 174, 188); // color of planet
  ellipse((sin(mercuryAngle)*mercuryDist + width/2), (cos(mercuryAngle)*mercuryDist + height/2), sunSize/7, sunSize/7);
  popMatrix();

  //venus
  pushMatrix();
  noStroke ();
  fill(255, 198, 73);
  ellipse((sin(venusAngle)*venusDist + width/2), (cos(venusAngle)*venusDist + height/2), sunSize/5, sunSize/5);
  popMatrix();


  //earth
  pushMatrix();
  noStroke ();
  fill(0, 127, 123);
  ellipse((sin(earthAngle)*earthDist + width/2), (cos(earthAngle)*earthDist + height/2), sunSize/4, sunSize/4);
  popMatrix();


  //mars
  pushMatrix();
  noStroke ();
  fill(200, 46, 53);
  ellipse((sin(marsAngle)*marsDist + width/2), (cos(marsAngle)*marsDist + height/2), sunSize/6, sunSize/6);
  popMatrix();


  //jupiter
  pushMatrix();
  noStroke ();
  fill(234, 210, 168);
  ellipse((sin(jupiterAngle)*jupiterDist + width/2), (cos(jupiterAngle)*jupiterDist + height/2), sunSize/2, sunSize/2);
  popMatrix();


  //saturn
  pushMatrix();
  noStroke ();
  fill(182, 151, 125);
  ellipse((sin(saturnAngle)*saturnDist + width/2), (cos(saturnAngle)*saturnDist + height/2), sunSize/2.5, sunSize/2.5);
  ellipse((sin(saturnAngle)*saturnDist + width/2), (cos(saturnAngle)*saturnDist + height/2), sunSize/2, sunSize/5);
  popMatrix();


  //uranus
  pushMatrix();
  noStroke ();
  fill(178, 214, 219);
  ellipse((sin(uranusAngle)*uranusDist + width/2), (cos(uranusAngle)*uranusDist + height/2), sunSize/3.5, sunSize/3.5);
  popMatrix();


  //neptune
  pushMatrix();
  noStroke ();
  fill(46, 93, 157);
  ellipse((sin(neptuneAngle)*neptuneDist + width/2), (cos(neptuneAngle)*neptuneDist + height/2), sunSize/4, sunSize/4);
  popMatrix();


  
  
  // Speed of each planet
  if (rotation) {
    mercuryAngle += 0.001;
    venusAngle -= 0.0013;
    earthAngle += 0.0011;
    marsAngle += 0.00065;
    jupiterAngle += 0.001;
    saturnAngle += 0.00060;
    uranusAngle -= 0.00059;
    neptuneAngle += 0.0003;
  }
  //if the roation occurs, then the angle of each planet needs to keep increasing for it to orbit
}

void mouseClicked() {
  sD = dist(mouseX, mouseY, width/2, height/2);
  mD = dist(mouseX, mouseY, (sin(mercuryAngle)*mercuryDist + width/2), (cos(mercuryAngle)*mercuryDist + height/2));
  vD = dist(mouseX, mouseY, (sin(venusAngle)*venusDist + width/2), (cos(venusAngle)*venusDist + height/2));
  eD = dist(mouseX, mouseY, (sin(earthAngle)*earthDist + width/2), (cos(earthAngle)*earthDist + height/2));
  maD = dist(mouseX, mouseY, (sin(marsAngle)*marsDist + width/2), (cos(marsAngle)*marsDist + height/2));
  jD = dist(mouseX, mouseY, (sin(jupiterAngle)*jupiterDist + width/2), (cos(jupiterAngle)*jupiterDist + height/2));
  saD = dist(mouseX, mouseY, (sin(saturnAngle)*saturnDist + width/2), (cos(saturnAngle)*saturnDist + height/2));
  uD = dist(mouseX, mouseY, (sin(uranusAngle)*uranusDist + width/2), (cos(uranusAngle)*uranusDist + height/2));
  nD = dist(mouseX, mouseY, (sin(neptuneAngle)*neptuneDist + width/2), (cos(neptuneAngle)*neptuneDist + height/2));
  
  if (sD < sunSize/2) {
    pG.beginDraw();
    pG.clear();
    pG.fill (255);
    pG.textFont(Archer);
    pG.text ("Sun", 700,50);
    pG.endDraw();
  } else if (mD < sunSize/7) {
    pG.beginDraw();
    pG.clear();
    pG.fill (255);
    pG.textFont(Archer);
    pG.text ("Mercury\n Gforce- 3.70m/s^2\n orbit time- 88 Days\n orbit dist- 35M Miles\n earth dist- 28M Miles", 700,50);
    pG.endDraw();
  } else if (vD < sunSize/5) {
    pG.beginDraw();
    pG.clear();
    pG.fill (255);
    pG.textFont(Archer);
    pG.text ("Venus\n Gforce- 8.36m/s^2\n orbit time- 225 Days\n orbit dist- 67M Miles\n earth dist- 62M Miles", 700,50);
    pG.endDraw();
  } else if (eD < sunSize/4) {
    pG.beginDraw();
    pG.clear();
    pG.fill (255);
    pG.textFont(Archer);
    pG.text ("Earth\n Gforce- 9.80m/s^2\n orbit time- 365 Days\n orbit dist- 92M Miles\n earth dist- 38M Miles", 700,50);
    pG.endDraw();
  } else if (maD < sunSize/6) {
    pG.beginDraw();
    pG.clear();
    pG.fill (255);
    pG.textFont(Archer);
    pG.text ("Mars\n Gforce- 3.72m/s^2\n orbit time- 687 Days\n orbit dist- 141M Miles\n earth dist- 33.9M Miles", 700,50);
    pG.endDraw();
  } else if (jD < sunSize/2) {
    pG.beginDraw();
    pG.clear();
    pG.fill (255);
    pG.textFont(Archer);
    pG.text ("Jupiter\n Gforce- 24.79m/s^2\n orbit time- 4,380 Days\n orbit dist- 483M Miles\n earth dist- 365M Miles", 700,50);
    pG.endDraw();
  } else if (saD < sunSize/2.5) {
    pG.beginDraw();
    pG.clear();
    pG.fill (255);
    pG.textFont(Archer);
    pG.text ("Saturn\n Gforce- 10.44m/s^2\n orbit time- 10,585 Days\n orbit dist- 886M Miles\n earth dist- 746M Miles", 700,50);
    pG.endDraw();
  } else if (uD < sunSize/3.5) {
    pG.beginDraw();
    pG.clear();
    pG.fill (255);
    pG.textFont(Archer);
    pG.text ("Uranus\n Gforce- 8.87m/s^2\n orbit time- 30,660 Days\n orbit dist- 1783M Miles\n earth dist- 1600M Miles", 700,50);
    pG.endDraw();
  } else if (nD < sunSize/4) {
    pG.beginDraw();
    pG.clear();
    pG.fill (255);
    pG.textFont(Archer);
    pG.text ("Neptune\n Gforce- 11.15m/s^2\n orbit time- 60,225 Days\n orbit dist- 2795M Mile\n earth dist- 2700M Miles", 700,50);
    pG.endDraw();
  } else {
  print("No planet");
  pG.beginDraw();
  pG.clear();
  pG.endDraw();
}
}
