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
