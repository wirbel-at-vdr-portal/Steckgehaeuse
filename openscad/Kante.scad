$fn = 100;
tiny = 0.01;


/*

module stl_model() {
  import("Kante_5cm.stl");
}

color("blue") translate([30,0,0]) stl_model();
*/


/*************************************************
 * hoehe in mm
 ************************************************/

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
  x5 = 4.25;
  y7 = 3;
  
  dh = 3   + 0.2; // Toleranz
  h1 = hoehe - 2*dh;  

  h2 = 5.7 + 0.2; // Toleranz Innenloch
  d2 = 4.0 + 0.2; // Toleranz Innenloch

  color("red")
  difference() {
     union() {
        //color("red")
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
          ]); // polygon
        translate([0,0,dh])
        linear_extrude(height=h1)
        polygon(points=[
          [x3,y4 - tiny], // 9,-0
          [x3,y6], // 9,1.5
          [x5,y6], // 4,1.5
          [y6,x5], // 1.5,4
          [y6,x3], // 1.5,9
          [y4 - tiny,x3], // -0,9
          [y4 - tiny,y7], // -0,3
          [y7,y4 - tiny], // 3,-0
          [x3,y4 - tiny], // 9,-0
          ]); // polygon
        translate([0,0,0])           cylinder(h=h2, d=7.0); // Loch unten
        translate([0,0,hoehe-h2])    cylinder(h=h2, d=7.0); // Loch oben
        } // union

     translate([0,0,-tiny])    cylinder(h=h2+3*tiny, d=d2); // Loch unten
     translate([0,0,hoehe-h2]) cylinder(h=h2+2*tiny, d=d2); // Loch oben
  } // difference
}

