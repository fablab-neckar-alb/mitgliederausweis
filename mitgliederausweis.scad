use <Karla_BoldStencil /Karla_BoldStencil.ttf>

vorname = "Max von";
nachname = "Brederlow";

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
    translate([2,4,0])text("FabLab Neckar-Alb e.V.", size=5.5, font="Karla:style=Bold Stencil");
    translate([2,10,0]) {
        scale([0.1,0.1]) import (file = "logo.dxf");
    }
    translate([83,41,0])text(text=vorname, size=11, font="Karla:style=Bold Stencil", halign="right");
    translate([83,28,0])text(text=nachname, size=11, font="Karla:style=Bold Stencil", halign="right");
}
 
 