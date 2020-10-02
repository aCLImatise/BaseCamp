class: CommandLineTool
id: _fdrawtree.cwl
inputs:
- id: in_plotter
  doc: "menu       [l] Plotter or printer the tree will be\ndrawn on (Values: l (Postscript\
    \ printer file\nformat); m (PICT format (for drawing\nprograms)); j (HP Laserjet\
    \ 75 dpi PCL file\nformat); s (HP Laserjet 150 dpi PCL file\nformat); y (HP Laserjet\
    \ 300 dpi PCL file\nformat); w (MS-Windows Bitmap); f (FIG 2.0\ndrawing program\
    \ format); a (Idraw drawing\nprogram format); z (VRML Virtual Reality\nMarkup\
    \ Language file); n (PCX 640x350 file\nformat (for drawing programs)); p (PCX\n\
    800x600 file format (for drawing programs));\nq (PCX 1024x768 file format (for\
    \ drawing\nprograms)); k (TeKtronix 4010 graphics\nterminal); x (X Bitmap format);\
    \ v (POVRAY 3D\nrendering program file); r (Rayshade 3D\nrendering program file);\
    \ h (Hewlett-Packard\npen plotter (HPGL file format)); d (DEC\nReGIS graphics\
    \ (VT240 terminal)); e (Epson\nMX-80 dot-matrix printer); c\n(Prowriter/Imagewriter\
    \ dot-matrix printer);\nt (Toshiba 24-pin dot-matrix printer); o\n(Okidata dot-matrix\
    \ printer); b (Houston\nInstruments plotter); u (other (one you have\ninserted\
    \ code for)))"
  type: boolean
  inputBinding:
    prefix: -plotter
- id: in_previewer
  doc: "menu       [x] Previewing device (Values: n (Will not\nbe previewed); I i\
    \ (MSDOS graphics screen\nm:Macintosh screens); x (X Windows display);\nw (MS\
    \ Windows display); k (TeKtronix 4010\ngraphics terminal); d (DEC ReGIS graphics\n\
    (VT240 terminal)); o (Other (one you have\ninserted code for)))"
  type: boolean
  inputBinding:
    prefix: -previewer
- id: in_iterate
  doc: "menu       [e] Iterate to improve tree (Values: n (No);\ne (Equal-Daylight\
    \ algorithm); b (n-Body\nalgorithm))"
  type: boolean
  inputBinding:
    prefix: -iterate
- id: in_lengths
  doc: boolean    [N] Use branch lengths from user trees
  type: boolean
  inputBinding:
    prefix: -lengths
- id: in_label_direction
  doc: "menu       [m] Label direction (Values: a (along); f\n(fixed); r (radial);\
    \ m (middle))"
  type: boolean
  inputBinding:
    prefix: -labeldirection
- id: in_tree_angle
  doc: "float      [90.0] Angle the tree is to be plotted\n(Number from -360.000 to\
    \ 360.000)"
  type: boolean
  inputBinding:
    prefix: -treeangle
- id: in_arc
  doc: "float      [360] Degrees the arc should occupy (Number\nfrom 0.000 to 360.000)"
  type: boolean
  inputBinding:
    prefix: -arc
- id: in_tree_depth
  doc: "float      [0.53] Depth of tree as fraction of its\nbreadth (Number from 0.100\
    \ to 100.000)"
  type: boolean
  inputBinding:
    prefix: -treedepth
- id: in_paper_x
  doc: float      [20.63750] Paper width (Any numeric value)
  type: boolean
  inputBinding:
    prefix: -paperx
- id: in_papery
  doc: "float      [26.98750] Paper height (Number 0.100 or\nmore)"
  type: boolean
  inputBinding:
    prefix: -papery
- id: in_pages_height
  doc: "float      [1] Number of trees across height of page\n(Number 1.000 or more)"
  type: boolean
  inputBinding:
    prefix: -pagesheight
- id: in_pages_width
  doc: "float      [1] Number of trees across width of page\n(Number 1.000 or more)"
  type: boolean
  inputBinding:
    prefix: -pageswidth
- id: in_hp_margin
  doc: "float      [0.41275] Horizontal overlap (cm) (Number\n0.001 or more)"
  type: boolean
  inputBinding:
    prefix: -hpmargin
- id: in_vp_margin
  doc: "float      [0.53975] Vertical overlap (cm) (Number\n0.001 or more)"
  type: boolean
  inputBinding:
    prefix: -vpmargin
- id: in_font_file
  doc: string     [font1] Fontfile name (Any string)
  type: boolean
  inputBinding:
    prefix: -fontfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _fdrawtree
