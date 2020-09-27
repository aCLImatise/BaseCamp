class: CommandLineTool
id: _fdrawgram.cwl
inputs:
- id: in_style
  doc: "menu       [c] Tree style output (Values: c (cladogram\n(v-shaped)); p (phenogram\
    \ (branches are\nsquare)); v (curvogram (branches are 1/4 out\nof an ellipse));\
    \ e (eurogram (branches\nangle outward, then up)); s (swooporam\n(branches curve\
    \ outward then reverse)); o\n(circular tree))"
  type: boolean
  inputBinding:
    prefix: -style
- id: in_plotter
  doc: "menu       [l] Plotter or printer the tree will be\ndrawn on (Values: l (Postscript\
    \ printer file\nformat); m (PICT format (for drawing\nprograms)); j (HP 75 DPI\
    \ Laserjet PCL file\nformat); s (HP 150 DPI Laserjet PCL file\nformat); y (HP\
    \ 300 DPI Laserjet PCL file\nformat); w (MS-Windows Bitmap); f (FIG 2.0\ndrawing\
    \ program format); a (Idraw drawing\nprogram format); z (VRML Virtual Reality\n\
    Markup Language file); n (PCX 640x350 file\nformat (for drawing programs)); p\
    \ (PCX\n800x600 file format (for drawing programs));\nq (PCX 1024x768 file format\
    \ (for drawing\nprograms)); k (TeKtronix 4010 graphics\nterminal); x (X Bitmap\
    \ format); v (POVRAY 3D\nrendering program file); r (Rayshade 3D\nrendering program\
    \ file); h (Hewlett-Packard\npen plotter (HPGL file format)); d (DEC\nReGIS graphics\
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
- id: in_lengths
  doc: boolean    [N] Use branch lengths from user trees
  type: boolean
  inputBinding:
    prefix: -lengths
- id: in_tree_depth
  doc: "float      [0.53] Depth of tree as fraction of its\nbreadth (Number from 0.100\
    \ to 100.000)"
  type: boolean
  inputBinding:
    prefix: -treedepth
- id: in_stem_length
  doc: "float      [0.05] Stem length as fraction of tree depth\n(Number from 0.010\
    \ to 100.000)"
  type: boolean
  inputBinding:
    prefix: -stemlength
- id: in_node_space
  doc: "float      [0.3333] Character height as fraction of tip\nspacing (Number from\
    \ 0.100 to 100.000)"
  type: boolean
  inputBinding:
    prefix: -nodespace
- id: in_no_deposition
  doc: "menu       [c] Position of interior nodes (Values: i\n(Intermediate between\
    \ their immediate\ndescendants); w (Weighted average of tip\npositions); c (Centered\
    \ among their ultimate\ndescendants); n (Innermost of immediate\ndescendants);\
    \ v (So tree is v shaped))"
  type: boolean
  inputBinding:
    prefix: -nodeposition
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
- _fdrawgram
