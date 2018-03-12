profile_width = 30;
total_width = 120;
total_depth = 120;

translate([0, 0, 0])
    import("profile-30mm.stl");
translate([total_width - profile_width, 0, 0])
      import("./profile-30mm.stl");
translate([total_width - profile_width, total_depth - profile_width, 0])
      import("./profile-30mm.stl");    
translate([0, total_depth - profile_width, 0])
      import("./profile-30mm.stl");
