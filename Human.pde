class Human {
  private String name;  // 名前
          PImage stand;
  private float x;
  private float y;


  Human(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
  }

  void setXY(float x, float y){
     this.x = x;
     this.y = y;
  }

  float getX(){
    return x;
  }

  float getY() {
     return y;
  } 
  
  int getHeight(){
     return stand.height;
  }
  
  int getWidth(){
     return stand.width;
  }
  
  void update(){
      image(stand, (float)(x - stand.width/2), (float)(y - stand.height/2 ), stand.width, stand.height);
  }
  
  String getName() {
    return this.name;
  }

  void setName(String name) {
    this.name = name;
  }
}
