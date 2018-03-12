# [wolfrack][]

## Export STL

    /Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o wolfrack.stl wolfrack.scad  

### Pre-commit hook

```bash
#!/bin/sh
files=`git diff --cached --name-status`
re="scad"
if [[ $files = *"$re"* ]]; then
  echo "Creating stl file..."
  /Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD -o wolfrack.stl wolfrack.scad  
  cd $(git rev-parse --show-toplevel) && git add wolfrack.stl
fi
```

## Profile

[30 mm Profile](http://www13.boschrexroth-us.com/partstream/Load_Category.aspx?Category=30mm%20Series&menu=1,1,2)

## Software

- [LibreCAD](http://librecad.org) for editing DXF files
- [OpenSCAD](http://openscad.org)

[wolfrack]: http://github.com/besi/wolfrack
