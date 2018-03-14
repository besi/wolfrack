profile_width = 30;
total_width = 500;
total_depth = 700;
total_height = 600;

profile_file = "Rexroth-3 842 990 720_200MM.dxf";

module pillar(x=0, y=0, z=0, height=700){
    translate([x+profile_width/2, y+profile_width/2, z])
        linear_extrude(height)
            import(file = profile_file);
}

module shelf(height=0){
    shelf_thickness = 10;
    x = total_width - (2 * profile_width);
    y = total_depth;
    z = shelf_thickness;
    translate([profile_width,0, height])
        cube([x, y, z]);    
}

pillar();
pillar(x=total_width - profile_width);
pillar(x=total_width - profile_width, y=total_depth - profile_width);
pillar(x=0, y=total_depth - profile_width);

shelf(height = 0);
shelf(height = 150);
shelf(height = 400);
