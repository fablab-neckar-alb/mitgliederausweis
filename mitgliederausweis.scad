 use <Karla_BoldStencil /Karla_BoldStencil.ttf>

vorname = "Justin";
nachname = "Humm";

sizex = 85;
sizey = 55;
eckenradius = 7;
difference() {
    hull() {
       translate([eckenradius, eckenradius,0]) circle(eckenradius);
       translate([sizex-eckenradius, eckenradius,0]) circle(eckenradius);
       translate([ eckenradius,sizey-eckenradius,0]) circle(eckenradius);
       translate([sizex-eckenradius,sizey-eckenradius,0]) circle(eckenradius);
    }
    translate([2,3,0])text("FabLab Neckar-Alb e.V.", size=5.5, font="Karla:style=Bold Stencil");
    translate([2,9,0]) {
        scale([0.25,0.25]) import (file = "logo.dxf");
    }
    translate([42,40,0])text(text=vorname, font="Karla:style=Bold Stencil");
    translate([42,20,0])text(text=nachname, font="Karla:style=Bold Stencil");
}
 
 