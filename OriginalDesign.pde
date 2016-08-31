/*        Rule for the FloorY's.
if FloorY# = even # (i.e. FloorY2, FloorY8), then it >>>>>DOES NOT<<<<<<<<< starts at 10.
if FloorY# = odd # (i.e. FloorY5, FloorY7), then it >>>>>DOES<<<<<< starts at 0.
*/

void setup()
{
    size(400,400);
}
//Global Variables
        int FloorX = 0;
        int FloorY = 200;
        int change = 10;
        
        int r1 = 247;
        int g1 = 255;
        int b1 = 0;
        
        int r2 = 47;
        int g2 = 64;
        int b2 = 252;
        
        int r3 = 240;
        int g3 = 55;
        int b3 = 212;
        
        int ColorY = color(255, 255, 0);
        int ColorB = color(0, 255, 255);
        int ColorP = color(255, 0, 255);
        int COLURRRRSSSSS = 0;
//Levels of Floors
        int FloorY1 = -10;
        int FloorY2 = 5;
        int FloorY3 = 20;
        int FloorY4 = 35;
        int FloorY5 = 50;
        int FloorY6 = 65;
        int FloorY7 = 80;
        int FloorY8 = 95;
        int FloorY9 = 110;
        int FloorY10 = 125;
        int FloorY11 = 140;
        int FloorY12 = 155;
        int FloorY13 = 170;
        int FloorY14 = 185;
        //  FloorY   = 200;
        int FloorY21 = 215;

//shape design
public void Floor(int x, int y) {

    //Local Variables
        int MiddleY = y + 15;
        int BottomY = y + 10;
    //Top Variables
        int FloorLeft = x - 10;
        int FloorTop = y - 5;
        int FloorRight = x + 10;
        int FloorBottom = y +5;
    
    //Left Variables
        int LeftX = FloorLeft;
        int TopMiddleY = y + 5;
        
    
    //Right Variables
        int TopRightX = FloorRight;
        
        /* - - - - - - - - - - Remove the backs faces to make it opaque - - - - - - - - - - - - */
        
        //back left face
        beginShape();
        fill(COLURRRRSSSSS, y, x);
            vertex(x, FloorTop);
            vertex(x - 1, y + 6);
            vertex(LeftX, BottomY);
            vertex(FloorLeft, y);
            vertex(x, FloorTop);
        endShape();    
        
        //Back right face
        beginShape();
        fill(y, COLURRRRSSSSS, x);
            vertex(x - 1, y + 6);
            //vertex(FloorRight, BottomY);
            vertex(FloorRight, y);
            vertex(x, FloorTop);
            vertex(x - 1, y + 6);
        endShape();
    
    //top
    stroke(y, 0, x);
    fill(x, y, 0, 100);
    beginShape(); //could also switch it for quad(x1, y1, x2, y2, x3, y3, x4, y4);
        vertex(FloorLeft, y);
        vertex(x, FloorTop);
        vertex(FloorRight, y);
        vertex(x, FloorBottom);
        vertex(FloorLeft, y);
    endShape();    
    
    // light's reflection
    noStroke();
    fill(255,255,255, 100);
    beginShape();
        vertex(x + 4.9, y);
        vertex(x + 4, y - 0.5);
        vertex(x + 1, y - 3.5);
        vertex(x, y - 1);
        vertex(x + 0.5, y - 1.5);
        vertex(x + 4.9, y -0.5);
    endShape();
    
    //left
    stroke(x, y, 0);
    fill(COLURRRRSSSSS, x, y, 100);
    beginShape();
        vertex(LeftX, y);
        vertex(x, TopMiddleY);
        vertex(x, MiddleY);
        vertex(LeftX, BottomY);
        vertex(LeftX, y);
    endShape();
    
    //right
    stroke(0, y, x);
    fill(x, COLURRRRSSSSS, y, 90);
    //fill(240, 82, 216);
    beginShape();
        vertex(TopRightX, y);
        vertex(TopRightX, BottomY);
        vertex(x, MiddleY);
        vertex(x, TopMiddleY);
        vertex(TopRightX, y);
    endShape();
};

public void Row(int x, int y) {
    Floor(x + 10, y);
    Floor(x + 30, y);
    Floor(x + 50, y);
    Floor(x + 70, y);
    Floor(x + 90, y);
    Floor(x + 110, y);
    Floor(x + 130, y);
    Floor(x + 150, y);
    Floor(x + 170, y);
    Floor(x + 190, y);
    Floor(x + 210, y);
    Floor(x + 230, y);
    Floor(x + 250, y);
    Floor(x + 270, y);
    Floor(x + 290, y);
    Floor(x + 310, y);
    Floor(x + 330, y);
    Floor(x + 350, y);
    Floor(x + 370, y);
    Floor(x + 390, y);
    Floor(x + 410, y);
};

void draw(){
    

//The Blocks    
    Row(-10, FloorY1);
    Row(0, FloorY2);
    Row(-10, FloorY3);
    Row(0, FloorY4);
    Row(-10, FloorY5);
    Row(0, FloorY6);
    Row(-10, FloorY7);
    Row(0, FloorY8);
    Row(-10, FloorY9);
    Row(0, FloorY10);
    Row(-10, FloorY11);
    Row(0, FloorY12);
    Row(-10, FloorY13);
    Row(0, FloorY14);
    Row(-10, FloorY);
    Row(0, 215);
    Row(-10, 230);
    Row(0, 245);
    Row(-10, 260);
    Row(0, 275);
    Row(-10, 290);
    Row(0, 305);
    Row(-10, 320);
    Row(0, 335);
    Row(-10, 350);
    Row(0, 365);
    Row(-10, 380);
    Row(0, 395);
COLURRRRSSSSS = COLURRRRSSSSS + change;
if (COLURRRRSSSSS > 255) {
change = -10; }
if (COLURRRRSSSSS < 0) {
change = 10; }
};
