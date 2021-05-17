class Runner extends Human {
  
  float dxAvoidWall = 0;
  float dyAvoidWall = 0;
  
  
  Runner(String name, float x, float y) {
    super(name, x, y);
    stand = loadImage("goseicho1.png");
  }

  void update(float dx , float dy){
    
    if(getX() > width * 0.9){
      dxAvoidWall = log(getX() - 0.9 * width + 1)/log(0.5);
    }else if(getX() < width * 0.1){
      dxAvoidWall = log(0.1 * width - getX())/log(2);
    }else{
      dxAvoidWall = 0;
    }
    
    if(getY() > height * 0.9){
      dyAvoidWall = log(getY() - 0.9 * height + 1)/log(0.5);
    }else if(getY() < height * 0.1){
      dyAvoidWall = log(0.1 * height - getY())/log(2);
    }else{
      dyAvoidWall = 0;
    }
    
    setXY(getX()+ dx + dxAvoidWall, getY() + dy + dyAvoidWall);
    super.update();
   
  }
}
