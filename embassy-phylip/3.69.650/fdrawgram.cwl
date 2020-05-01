#!/usr/bin/env cwl-runner

baseCommand:
- fdrawgram
class: CommandLineTool
cwlVersion: v1.0
id: fdrawgram
inputs:
- doc: 'menu       [c] Tree style output (Values: c (cladogram (v-shaped)); p (phenogram
    (branches are square)); v (curvogram (branches are 1/4 out of an ellipse)); e
    (eurogram (branches angle outward, then up)); s (swooporam (branches curve outward
    then reverse)); o (circular tree))'
  id: style
  inputBinding:
    prefix: -style
  type: boolean
- doc: 'menu       [l] Plotter or printer the tree will be drawn on (Values: l (Postscript
    printer file format); m (PICT format (for drawing programs)); j (HP 75 DPI Laserjet
    PCL file format); s (HP 150 DPI Laserjet PCL file format); y (HP 300 DPI Laserjet
    PCL file format); w (MS-Windows Bitmap); f (FIG 2.0 drawing program format); a
    (Idraw drawing program format); z (VRML Virtual Reality Markup Language file);
    n (PCX 640x350 file format (for drawing programs)); p (PCX 800x600 file format
    (for drawing programs)); q (PCX 1024x768 file format (for drawing programs));
    k (TeKtronix 4010 graphics terminal); x (X Bitmap format); v (POVRAY 3D rendering
    program file); r (Rayshade 3D rendering program file); h (Hewlett-Packard pen
    plotter (HPGL file format)); d (DEC ReGIS graphics (VT240 terminal)); e (Epson
    MX-80 dot-matrix printer); c (Prowriter/Imagewriter dot-matrix printer); t (Toshiba
    24-pin dot-matrix printer); o (Okidata dot-matrix printer); b (Houston Instruments
    plotter); u (other (one you have inserted code for)))'
  id: plotter
  inputBinding:
    prefix: -plotter
  type: boolean
- doc: 'menu       [x] Previewing device (Values: n (Will not be previewed); I i (MSDOS
    graphics screen m:Macintosh screens); x (X Windows display); w (MS Windows display);
    k (TeKtronix 4010 graphics terminal); d (DEC ReGIS graphics (VT240 terminal));
    o (Other (one you have inserted code for)))'
  id: previewer
  inputBinding:
    prefix: -previewer
  type: boolean
- doc: boolean    [N] Use branch lengths from user trees
  id: lengths
  inputBinding:
    prefix: -lengths
  type: boolean
- doc: float      [0.53] Depth of tree as fraction of its breadth (Number from 0.100
    to 100.000)
  id: tree_depth
  inputBinding:
    prefix: -treedepth
  type: boolean
- doc: float      [0.05] Stem length as fraction of tree depth (Number from 0.010
    to 100.000)
  id: stem_length
  inputBinding:
    prefix: -stemlength
  type: boolean
- doc: float      [0.3333] Character height as fraction of tip spacing (Number from
    0.100 to 100.000)
  id: node_space
  inputBinding:
    prefix: -nodespace
  type: boolean
- doc: 'menu       [c] Position of interior nodes (Values: i (Intermediate between
    their immediate descendants); w (Weighted average of tip positions); c (Centered
    among their ultimate descendants); n (Innermost of immediate descendants); v (So
    tree is v shaped))'
  id: no_deposition
  inputBinding:
    prefix: -nodeposition
  type: boolean
