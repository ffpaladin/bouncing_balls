
Ball balla, ballb, ballc, balld;
color bgcolor = color(random(255),random(255),random(255));

class Ball { 
  
  color c;
  
  float ballx;
  float bally;
  
  float ballvx;
  float ballvy;

  
  
  Ball(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed) { 
    c = tempC;
    ballx = tempXpos;
    bally = tempYpos;
    ballvx = tempXspeed;
    ballvy = tempYspeed;
  }

  void display() {
    ellipseMode(CENTER);
    fill(c);
    ellipse(ballx,bally,20,20);
  }

  void step() {
    ballvy ++;
  
    ballx += ballvx;
    bally += ballvy;
    
    if(ballx < 10){ballvx *= -1; ballx = 10;}
    if(ballx > 490){ballvx *= -1; ballx = 490;}
    
    if(bally < 10){ballvy *= -1; bally = 10;}
    if(bally > 490){ballvy *= -1; bally = 490;}
  }
}



void setup() {
  size(500,500);
  
  balla = new Ball(color(random(255),random(255),random(255)),random(500),random(250),random(20)-10,random(20)-10);
  ballb = new Ball(color(random(255),random(255),random(255)),random(500),random(250),random(20)-10,random(20)-10);
  ballc = new Ball(color(random(255),random(255),random(255)),random(500),random(250),random(20)-10,random(20)-10);
  balld = new Ball(color(random(255),random(255),random(255)),random(500),random(250),random(20)-10,random(20)-10);
  
}

void draw() {
  background(bgcolor);
  
  balla.step();
  ballb.step();
  ballc.step();
  balld.step();
  
  balla.display();
  ballb.display();
  ballc.display();
  balld.display();
  
  
  ellipseMode(CENTER);
  
  //ellipse(ballx,bally,20,20);
}

void mousePressed() {
  balla = new Ball(color(random(255),random(255),random(255)),random(500),random(250),random(20)-10,random(20)-10);
  ballb = new Ball(color(random(255),random(255),random(255)),random(500),random(250),random(20)-10,random(20)-10);
  ballc = new Ball(color(random(255),random(255),random(255)),random(500),random(250),random(20)-10,random(20)-10);
  balld = new Ball(color(random(255),random(255),random(255)),random(500),random(250),random(20)-10,random(20)-10);
  bgcolor = color(random(255),random(255),random(255));
}
