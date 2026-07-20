
use <Kante.scad>
$fn = 100;


for(i = [0:3]) {
   rotate([0,0,i*90]) translate([-12,-12,0]) Kante(50); // hoehe in mm
   
   /*
   for(j = [1:9]) {      
         union() {
            color("blue")    rotate([0,90,i*90]) translate([-j*5,11.5,-2]) cylinder(d=1.5, h=4);
            color("magenta") rotate([0,90,i*90]) translate([-j*5,11.5, 2]) cylinder(d1=1.5, d2=0.6, h=1);
            color("Yellow")  rotate([0,90,i*90]) translate([-j*5,11.5,-3]) cylinder(d1=0.6, d2=1.5, h=1);            
            }
      }
   */
   
   color("blue") rotate([0,0,i*90]) translate([0,11.25,0]) scale([7.8,1,1]) cylinder(h=50 - 4, d=0.8);
   }
      
