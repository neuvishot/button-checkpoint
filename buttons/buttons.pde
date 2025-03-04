// buttons checkpoint

button mybutton, hihi, workss;
color red, pink;
boolean mouseReleased, wasPressed;

void setup() {
  size(600, 600);
  red = #A03434;
  pink = #D87272;

  mybutton = new button(300, 300, 200, 150, red, pink, "ggg", "moalgn.png");
  hihi = new button(100, 100, 75, 50, pink, red, "hi", ".png" );
  workss = new button(300, 80, 300, 100, #446AD8, #98E4FF, "sdhf", ".png");
}

void draw() {
  //println(mouseX, mouseY);
  click();
  
  workss.show();
  workss.clicked();
  workss.words();

  mybutton.show();
  mybutton.clicked();
  mybutton.words();
  mybutton.pics();

  hihi.show();
  hihi.clicked();
  hihi.words();
}
