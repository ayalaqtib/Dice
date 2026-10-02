void setup()
{
  size(500,500);
  background(255,219,241);
  noLoop();

}


void draw()
{
  background(255,219,241);
  //your code here
  Die bob;
  int total = 0;
  int y = 10;
  while (y<=400){
    int x = 10;
    while(x<=500){
    bob = new Die (x,y);
    bob.roll();
    total = total + bob.number;
    bob.show();
    x = x + 70;
    
    }
    y = y + 70;

  }//end of while
  fill(0,0,0);
  textSize(20);
  textAlign(CENTER,CENTER);
  text("Total: " + total,250,450);
}


void mousePressed()
{
  redraw();
}


class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
  int number;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;

  }
  void roll()
  {
    //your code here
    number = (int)(Math.random()*6)+1;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255,144,211);
    rect(myX,myY,50,50,10);
    fill(255,255,255);
    
    if (number == 1){
    ellipse(myX+25,myY+25, 10, 10);
    }
    else if (number == 2){
    ellipse(myX+15, myY+25, 10,10);
    ellipse(myX+35, myY+25, 10,10);
    }
    else if(number == 3){
      ellipse(myX+15, myY+15, 10,10);
      ellipse(myX+25, myY+25, 10,10);
      ellipse(myX+35, myY+35, 10,10);
    }
    else if (number == 4){
      ellipse(myX+15, myY+18, 10,10);
      ellipse(myX+35, myY+18, 10,10);
      ellipse(myX+15, myY+35, 10,10);
      ellipse(myX+35, myY+35, 10,10);
    }
     else if (number == 5){
      ellipse(myX+15, myY+18, 10,10);
      ellipse(myX+35, myY+18, 10,10);
      ellipse(myX+15, myY+38, 10,10);
      ellipse(myX+35, myY+38, 10,10);
      ellipse(myX+25, myY+28, 10,10);
    }
     else if (number == 6){
      ellipse(myX+18, myY+16, 10,10);
      ellipse(myX+18, myY+28, 10,10);
      ellipse(myX+18, myY+40, 10,10);
      ellipse(myX+32, myY+16, 10,10);
      ellipse(myX+32, myY+28, 10,10);
      ellipse(myX+32, myY+40, 10,10);
    }
    
  
    
  }//end of void show
}//end of class
