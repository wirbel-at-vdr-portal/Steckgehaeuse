$fn = 100;

use <Boden.scad>
use <Inlet.scad>
use <Kante.scad>


module BodenKomplett() {
  color("grey")    Boden(60, 100);
  color("magenta") translate([0,0,1.5]) inlet_top_down(60, 100);
}

module Kanten() {
  dx = 24;
  dy = 44;
  
  translate([-dx,-dy,1.5])                   Kante(50);
  translate([+dx,-dy,1.5]) rotate([0,0, 90]) Kante(50);  
  translate([+dx,+dy,1.5]) rotate([0,0,180]) Kante(50);
  translate([-dx,+dy,1.5]) rotate([0,0,-90]) Kante(50);   
}

module Front() {
  translate([60/2-3,0,1.5]) inlet_front_back(50,100);
}

module Links() {
  translate([0,100/2-3,1.5]) inlet_left_right(50,60);
}



translate([0,0,0]) BodenKomplett();
translate([0,0,0]) Kanten();
translate([0,0,0]) Front();
translate([0,0,0]) Links();
