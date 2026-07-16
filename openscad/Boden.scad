$fn = 100;
tiny = 0.01;






 
 


/*************************************************
 * dx,dy:  Maße in mm
 ************************************************/

module Boden(dx,dy) {
  h1 = 1.5;
  dx1 = 9.75;
  dx2 = 6;
  d1 = 4;
  d2 = 6.5;
  dx3 = 0.5;
  h2 = 4.5;
  dy1 = 16;
  x1 = 1.5;
  dy2 = 15;
  dx4 = 5.2;
  dx5 = 3;
  dx6 = 11.5;
  dy3 = 4.25;

  //color("red")
  difference() {
     union() {
        translate([0,0,h1/2]) cube([dx,dy,h1],true);
        
        translate([+dx/2-dx3, 0, h2/2]) cube([2*dx3,dy-2*dy1,h2], true);
        translate([-dx/2+dx3, 0, h2/2]) cube([2*dx3,dy-2*dy1,h2], true);    
        translate([0, +dy/2-dx3, h2/2]) cube([dx-2*dy1,2*dx3,h2], true);
        translate([0, -dy/2+dx3, h2/2]) cube([dx-2*dy1,2*dx3,h2], true);

        translate([+dx/2-dx4, 0, h2/2]) cube([x1,dy-2*dy2,h2], true);
        translate([-dx/2+dx4, 0, h2/2]) cube([x1,dy-2*dy2,h2], true);    
        translate([0, +dy/2-dx4, h2/2]) cube([dx-2*dy2,x1,h2], true);
        translate([0, -dy/2+dx4, h2/2]) cube([dx-2*dy2,x1,h2], true);
        } // union

     // Ecken abschneiden
     translate([+dx/2,+dy/2,h1/2-tiny]) rotate([0,0,45]) cube([dx1,dx1,h1+3*tiny], true);
     translate([+dx/2,-dy/2,h1/2-tiny]) rotate([0,0,45]) cube([dx1,dx1,h1+3*tiny], true);
     translate([-dx/2,+dy/2,h1/2-tiny]) rotate([0,0,45]) cube([dx1,dx1,h1+3*tiny], true);
     translate([-dx/2,-dy/2,h1/2-tiny]) rotate([0,0,45]) cube([dx1,dx1,h1+3*tiny], true);

     // vier Senklöcher  
     translate([+dx/2-dx2, +dy/2-dx2 ,-tiny]) cylinder(h=h1+3*tiny, d=d1);
     translate([+dx/2-dx2, -dy/2+dx2 ,-tiny]) cylinder(h=h1+3*tiny, d=d1);
     translate([-dx/2+dx2, +dy/2-dx2 ,-tiny]) cylinder(h=h1+3*tiny, d=d1);
     translate([-dx/2+dx2, -dy/2+dx2 ,-tiny]) cylinder(h=h1+3*tiny, d=d1);
     translate([+dx/2-dx2, +dy/2-dx2 ,-tiny]) cylinder(h=d2/2, d1=d2, d2=0);
     translate([+dx/2-dx2, -dy/2+dx2 ,-tiny]) cylinder(h=d2/2, d1=d2, d2=0);
     translate([-dx/2+dx2, +dy/2-dx2 ,-tiny]) cylinder(h=d2/2, d1=d2, d2=0);
     translate([-dx/2+dx2, -dy/2+dx2 ,-tiny]) cylinder(h=d2/2, d1=d2, d2=0);

     // innere Ecken
     translate([+dx/2-dx6,+dy/2-dx6,h1/2-tiny]) rotate([0,0,45]) cube([dx5,dx5,h1+3*tiny], true);
     translate([+dx/2-dx6,-dy/2+dx6,h1/2-tiny]) rotate([0,0,45]) cube([dx5,dx5,h1+3*tiny], true);
     translate([-dx/2+dx6,+dy/2-dx6,h1/2-tiny]) rotate([0,0,45]) cube([dx5,dx5,h1+3*tiny], true);
     translate([-dx/2+dx6,-dy/2+dx6,h1/2-tiny]) rotate([0,0,45]) cube([dx5,dx5,h1+3*tiny], true);

     translate([0,0,h1/2-tiny]) cube([+dx-2*dx6    ,+dy-2*dx6+dy3,h1+3*tiny], true);
     translate([0,0,h1/2-tiny]) cube([+dx-2*dx6+dy3,+dy-2*dx6    ,h1+3*tiny], true);     
     } // difference
}
