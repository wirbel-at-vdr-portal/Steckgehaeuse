$fn = 100;
tiny = 0.01;


/******************************************************
 * dx,dy: Maße, wie bei 'Boden' angegeben.
 *****************************************************/
module inlet_top_down(dx,dy) {
  h1 = 3;  
  dx1 = 6.3;
  dx2 = 4.0; // vier mal Fase an Ecken

  difference() {
     translate([0,0,h1/2]) cube([dx-2*dx1,dy-2*dx1,h1], true); 
     translate([+dx/2-dx1,+dy/2-dx1,h1/2-tiny]) rotate([0,0,45]) cube([dx2,dx2,h1+3*tiny], true);
     translate([+dx/2-dx1,-dy/2+dx1,h1/2-tiny]) rotate([0,0,45]) cube([dx2,dx2,h1+3*tiny], true);
     translate([-dx/2+dx1,+dy/2-dx1,h1/2-tiny]) rotate([0,0,45]) cube([dx2,dx2,h1+3*tiny], true);
     translate([-dx/2+dx1,-dy/2+dx1,h1/2-tiny]) rotate([0,0,45]) cube([dx2,dx2,h1+3*tiny], true);
     }
}


/******************************************************
 * dy: Maß, wie bei 'Boden' angegeben.
 * h:  Maß, wie bei 'Kante' angegeben.
 *****************************************************/
module inlet_front_back(h,dy) {
  h1 = 3;
  dy1 = 12+12.5;
  translate([0,0,h/2]) cube([h1,dy-dy1,h], true);
}


/******************************************************
 * dx: Maß, wie bei 'Boden' angegeben.
 * h:  Maß, wie bei 'Kante' angegeben.
 *****************************************************/
module inlet_left_right(h,dx) {
  h1 = 3;
  dx1 = 12+12.5;
  translate([0,0,h/2]) cube([dx-dx1,h1,h], true);
}
