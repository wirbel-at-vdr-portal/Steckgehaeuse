
module stl_model() {
  import("Kante_5cm.stl");
}

stl_model();



h = 50;  // höhe in mm


$fn = 100;
tiny = 0.01;


/*
x1 = 20; // größte abmessung in x
y1 = 20; // größte abmessung in y

dx1 = -13.55;
dy1 = -5;

dx2 = 4.5;
dy2 = 0;
x2 = 4.5; // innnere schraege Kante


dx3 = 5.5;
dy3 = -11.0;

dx4 = -3.25;
dy4 = 7.75;
x4 = 3.5;
y4 = 3.5;
*/
//translate([-0,-0,-1]) color("blue")


/*
difference() {
  translate([-x1/2,-y1/2,0]) rotate([0,0,0]) cube([x1,y1,h]);
  rotate([0,0,45]) translate([dx1,dy1,h/2-tiny]) cube([x1,y1,h+3*tiny], true);
  translate([0,0,-tiny]) cylinder(h=h+3*tiny, d=4.0);
  rotate([0,0,45]) translate([dx2,dy2,h/2-tiny]) cube([x2,x2,h+3*tiny], true);
  translate([dx3,dy3,h/2-tiny]) cube([20,10,h+3*tiny], true);  
  translate([dy3,dx3,h/2-tiny]) cube([10,20,h+3*tiny], true);

  translate([dy4,dx4,h/2-tiny]) cube([x4,y4,h+3*tiny], true);
}

*/

//translate([-0,-0,1]) color("red")

//




module Kante(hoehe) {
  x1 = 10;   // #1. unten rechts
  y1 = -6;   // #1.
  y2 = -5;   // #2
  x2 = +6;   // #3
  y3 = -1.5; // #4
  x3 = +9;   // #5
  y4 = +0;   // #6
  x4 = +3;   // #7
  y5 = +1;   // #8
  //--
  y6 = +1.5;
  x5 = 5;


  difference() {
     union() {
        color("red")
        linear_extrude(height=hoehe)
        polygon(points=[
          [x1,y1], // 10,-6
          [x1,y2], // 10,-5
          [x2,y2], //  6,-5
          [x2,y3], //  6,-1.5 
          [x3,y3], //  9,-1.5
          [x3,y4], //  9,0
          [x4,y4], //  3,0
          // copies from here.
          [y4,x4], //  0,3
          [y4,x3], //  0,9
          [y3,x3], // -1.5,9
          [y3,x2], // -1.5,6
          [y2,x2], //  -5,6
          [y2,x1], //  -5,10
          [y1,x1], //  -6,10
          [y1,y5], //  -6,1
          [y5,y1], //  -6,1
          [x1,y1]  // 10,-6
          ]);
        color("blue")
        linear_extrude(height=hoehe)
        polygon(points=[
          [x3,y4 - tiny], // 9,-0
          [x3,y6], // 9,1.5
          [x5,y6], // 5,1.5
          [y6,x5], // 1.5,5
          [y6,x3], // 1.5,9
          [y4 - tiny,x3], // -0,9
          [y4 - tiny,x3], // -0,9












          ]);
     }



  }




}


Kante(50);





