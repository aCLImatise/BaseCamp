version 1.0

task Fdrawtree {
  input {
    Boolean? plotter
    Boolean? previewer
    Boolean? iterate
    Boolean? lengths
    Boolean? label_direction
    Boolean? tree_angle
    Boolean? arc
    Boolean? tree_depth
  }
  command <<<
    fdrawtree \
      ~{true="-plotter" false="" plotter} \
      ~{true="-previewer" false="" previewer} \
      ~{true="-iterate" false="" iterate} \
      ~{true="-lengths" false="" lengths} \
      ~{true="-labeldirection" false="" label_direction} \
      ~{true="-treeangle" false="" tree_angle} \
      ~{true="-arc" false="" arc} \
      ~{true="-treedepth" false="" tree_depth}
  >>>
  parameter_meta {
    plotter: "menu       [l] Plotter or printer the tree will be drawn on (Values: l (Postscript printer file format); m (PICT format (for drawing programs)); j (HP Laserjet 75 dpi PCL file format); s (HP Laserjet 150 dpi PCL file format); y (HP Laserjet 300 dpi PCL file format); w (MS-Windows Bitmap); f (FIG 2.0 drawing program format); a (Idraw drawing program format); z (VRML Virtual Reality Markup Language file); n (PCX 640x350 file format (for drawing programs)); p (PCX 800x600 file format (for drawing programs)); q (PCX 1024x768 file format (for drawing programs)); k (TeKtronix 4010 graphics terminal); x (X Bitmap format); v (POVRAY 3D rendering program file); r (Rayshade 3D rendering program file); h (Hewlett-Packard pen plotter (HPGL file format)); d (DEC ReGIS graphics (VT240 terminal)); e (Epson MX-80 dot-matrix printer); c (Prowriter/Imagewriter dot-matrix printer); t (Toshiba 24-pin dot-matrix printer); o (Okidata dot-matrix printer); b (Houston Instruments plotter); u (other (one you have inserted code for)))"
    previewer: "menu       [x] Previewing device (Values: n (Will not be previewed); I i (MSDOS graphics screen m:Macintosh screens); x (X Windows display); w (MS Windows display); k (TeKtronix 4010 graphics terminal); d (DEC ReGIS graphics (VT240 terminal)); o (Other (one you have inserted code for)))"
    iterate: "menu       [e] Iterate to improve tree (Values: n (No); e (Equal-Daylight algorithm); b (n-Body algorithm))"
    lengths: "boolean    [N] Use branch lengths from user trees"
    label_direction: "menu       [m] Label direction (Values: a (along); f (fixed); r (radial); m (middle))"
    tree_angle: "float      [90.0] Angle the tree is to be plotted (Number from -360.000 to 360.000)"
    arc: "float      [360] Degrees the arc should occupy (Number from 0.000 to 360.000)"
    tree_depth: "float      [0.53] Depth of tree as fraction of its breadth (Number from 0.100 to 100.000)"
  }
}