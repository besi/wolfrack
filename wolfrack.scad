profile_width = 30;
profile_height = 100;
total_width = 120;
total_depth = 120;
total_height = 200;

height_scale = total_height / profile_height;

translate([0, 0, 0])
    scale([1,1,height_scale])
        import("profile-30mm.stl");
translate([total_width - profile_width, 0, 0])
    scale([1,1,height_scale])
      import("./profile-30mm.stl");
translate([total_width - profile_width, total_depth - profile_width, 0])
    scale([1,1,height_scale])
      import("./profile-30mm.stl");    
translate([0, total_depth - profile_width, 0])
    scale([1,1,height_scale])

      import("./profile-30mm.stl");
