//Arrays
int [] x;
int [] y;
boolean[] alive;
int brickd;
int n;
int tempx, tempy;

//Fonts


color darkblue = #272D4D;
color purple   = #B83564;
color mango    = #FF6A5A;
color orange   = #FFB350;     ;
color green    = #83B8AA;    ;
color white    = #FFFFFF;
color black    = #000000;

//Mode Variables
int mode;
final int INTRO     = 1;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER  = 4;

//intro GUI
float a;

//Game Entities
float bx, by, bd, vx, vy, px, py, pd;

//Keyboard variables
boolean akey, dkey;

void setup() {
  size(800, 800);
  mode = INTRO;
  brickd = 50;
  x = new int[3];
  y = new int[3];
  
  x[0] = 100;
  y[0] = 100;
  
  x[1] = 400;
  y[1] = 100;
  
  x[2] = 700;
  y[2] = 700;
  
  
  
  //set up paddle and ball
  bx = width/2;
  by = height-200;
  bd = 10;
  px = width/2;
  py = height;
  pd = 100;
  vx = 0;
  vy = 1;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("MODE ERROR in draw " + mode);
  }
}
