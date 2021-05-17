Catcher catcher;
Runner runner;
float distanceX = 0;
float distanceY = 0;
float distance = 0;
float dx1 = 0;
float dy1 = 0;


void setup() {
  size(1200,900);
  background(255); 

  runner = new Runner("Boy", (int)random(1200), (int)random(900));
  catcher = new Catcher("Taro");
}

void draw() {
  background(255);
  
  distanceX =catcher.getX() - runner.getX();
  distanceY =catcher.getY() - runner.getY();
  distance =sqrt(distanceX * distanceX + distanceY * distanceY);
  dx1 = -(distanceX/distance)*2000/(2*distance);
  dy1 = -(distanceY/distance)*2000/(2*distance);

  

  catcher.update();
  //enemy[0].update(0,0);
  runner.update(dx1,dy1);
  
  
  fill(0);
  textSize(50);
  /*
  int lineStep = 25;
  text("x_p:" + catcher.getX() + " , y_p:" + catcher.getY(), 10,lineStep);
  text("x_e:" + runner.getX() + " , y_e:" + runner.getY(), 10,lineStep * 2);
  text("distanceX:" + round(distanceX) + " , distanceY:" + round(distanceY), 10,lineStep * 3);
  text("distance:" + round(distance), 10,lineStep * 4);
  text("dx1:" + dx1, 10,lineStep * 5);
  text("dy1:" + dy1, 10,lineStep * 6);
  */
  
  text("catch me", 500,438);
}

void mouseMoved() {
  
}
