//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var planeX = 20;
var hotairY= 300;
var fireSize= -1000;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
 //base 
 fill(214, 210, 210)
 ellipse(planeX, 150, 50, 20);
  
  //wing

  ellipse(planeX,160,30,10)

  
  
 //circles
fill(255, 255, 255)
 ellipse(planeX+8,160,5,5);
  ellipse(planeX,160,5,5);
    ellipse(planeX-8,160,5,5)
  
 planeX = planeX + 1;
hotairY= hotairY -1;
fireSize= fireSize+7

//hot air ballon 
fill(247, 10, 10)

ellipse(200,hotairY,50,50)

//basket
fill(110, 72, 44)
rect(195,hotairY+30,10,10)

//lines
line(196,hotairY+30,187,hotairY+21)
line(205,hotairY+30,214,hotairY+21)


//fire explosion 
fill(179, 45, 0)
ellipse(200,150,fireSize,fireSize)
fill(219, 101, 33)
ellipse(200,150,fireSize,fireSize-100);

if(fireSize>900)
{
planeX = 20;
hotairY= 300;
 fireSize= -1000;

}



}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
