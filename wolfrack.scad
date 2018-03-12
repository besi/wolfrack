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

pillar();
pillar(x=total_width - profile_width);
pillar(x=total_width - profile_width, y=total_depth - profile_width);
pillar(x=0, y=total_depth - profile_width);
