class Catcher extends Human {


  Catcher(String name) {
    super(name, width/2, height/2);
    stand = loadImage("goseicho2.png");
}

  void update(){
    setXY(mouseX, mouseY);
    super.update();
   
  }

}
