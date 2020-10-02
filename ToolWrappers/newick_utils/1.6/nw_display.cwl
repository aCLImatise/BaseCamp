class: CommandLineTool
id: nw_display.cwl
inputs:
- id: in_rotate_labels_amount
  doc: ": rotate all labels by this amount (radians, default: 0)\n[only SVG radial]"
  type: long
  inputBinding:
    prefix: -a
- id: in_rotate_leftside_labels
  doc: ": rotate left-side labels by this amount (radians,\ndefault: 0.0349 (=~ 2°))\
    \ [only SVG radial]"
  type: long
  inputBinding:
    prefix: -A
- id: in_css_branch_length
  doc: ": CSS for branch length labels. [only SVG]\nDefault: 'font-size:small;font-family:sans'.\n\
    setting 'opacity:0' disables printing of branch lengths."
  type: long
  inputBinding:
    prefix: -b
- id: in_use_specified_file_css
  doc: ": use specified file as CSS map [only SVG]. A CSS map\nis a text file which\
    \ specifies a style (CSS) for a clade.\nEach line has the following structure:\n\
    <CSS> <flag> <label>+\n<CSS> is a valid CSS style specification (no spaces allowed)\n\
    e.g. 'font-size:small;font-family:italics;stroke:green'.\n<flag> is 'Individual',\
    \ 'Clade', or 'Label' (case is not important,\ncan be abbreviated down to 'I',\
    \ 'C'i or 'L').\nIf set to 'Clade', the style is applied to the clade defined\
    \ by\nthe labels. If 'Individual', the style is applied to each node\nindividually.\n\
    <label>+ is a nonempty, whitespace-separated list of Newick labels\n(spaces are\
    \ allowed IFF the label is enclosed in ''). If a label\nmatches more than one\
    \ node, all matching nodes are used.\nDefault: no CSS map, whole tree is black\
    \ (unless specified otherwise\nvia option -d).\n<CSS>, <flag>, and <labels>+ are\
    \ separated by whitespace.\nThe following specifies red stroke for a clade defined\
    \ by A, B and C;\n2-pixel wide, blue stroke for individual nodes D, E, and F,\
    \ and\ngreen italics for the labels 'A' and 'D'.\nstroke:red                 \
    \      Clade   A B C\nstroke:blue;stroke-width:2       I       D E F\nfill:green;font-style:italic\
    \     L       A D\nIf no colormap is specified, the default is (but see option\
    \ -d):\nstroke:black;fill:none;stroke-width:1;stroke-linecap:round"
  type: File
  inputBinding:
    prefix: -c
- id: in_css_overridden_strokeblackfillnonestrokewidthstrokelinecapround
  doc: ": CSS for 'plain' tree nodes (i.e., unless overridden by -c)\n[only SVG]\n\
    Default: stroke:black;fill:none;stroke-width:1;stroke-linecap:round"
  type: long
  inputBinding:
    prefix: -d
- id: in_graph_style_text
  doc: ": graph style (Text only). Values are:\nraw:             uses |, - , + and\
    \ = .\ncommas:          angles with , and'\nslashes: angles with \\ and /\nvt100:\
    \           use VT-100 box-drawing characters\nOnly the first character is looked\
    \ at, and case is not significant.\nThe default is slashes. This can be overridden\
    \ by setting environment\nvariable NW_DISPLAY_TEXT_STYLE to one of the above values.\n\
    NOTE: this is a rare case of a Newick Utils program not being\nbackward-compatible.\
    \ Even the 'raw' style does not exactly match the\nprevious output (but this was\
    \ buggy, the current output is different\nbecause it fixes problems)."
  type: long
  inputBinding:
    prefix: -e
- id: in_css_inner_node
  doc: ": CSS for inner node labels. [only SVG]\nDefault: 'font-size:small;font-family:sans'.\n\
    setting 'visibility:hidden' disables printing of inner node labels."
  type: long
  inputBinding:
    prefix: -i
- id: in_sets_position_inner
  doc: "sets the position of the inner node label. Valid options are\n'l' (near the\
    \ leaves), 'm' (middle) or 'r' (near the root). Default\nis 'l'."
  type: string
  inputBinding:
    prefix: -I
- id: in_css_leaf_node
  doc: ": CSS for leaf node labels. [only SVG]\nDefault: 'font-size:medium;font-family:sans'.\n\
    setting 'visibility:hidden' disables printing of leaf node labels.\nNote: if you\
    \ change this, you will probably need to adjust the\nspace allocated to leaf labels\
    \ - see option -W."
  type: long
  inputBinding:
    prefix: -l
- id: in_add_number_pixels
  doc: "add this number of pixels to the horizontal position of\nnode labels. [SVG\
    \ only]"
  type: long
  inputBinding:
    prefix: -n
- id: in_use_specified_file_see
  doc: ": use specified file as ornament map. Works like the CSS\nmap (see option\
    \ -c), except that it specifies arbitrary SVG snippets\ninstead of CSS styles.\
    \ For example, the following\n\"<circle style='fill:red' r='5'>\" Clade A B C\n\
    will draw a red circle of radius 5 at the root of the clade defined\nby nodes\
    \ A, B, and C. Keyword 'Individual' is also accepted and\nworks like for CSS."
  type: File
  inputBinding:
    prefix: -o
- id: in_integer_use_many
  doc: ": if <integer> is > 0, use that many pixels for the root\nif it has no length[only\
    \ SVG]; if it is 0, suppress the root's edge\nlength, if it has a length.\nThe\
    \ default is 10 pixels (SVG) or 1 character (text)."
  type: long
  inputBinding:
    prefix: -R
- id: in_draw_default_orthogonal
  doc: ': draw a radial tree (default: orthogonal) [only SVG]'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_output_graph_svg
  doc: ": output graph as SVG (default: ASCII graphics). All output is on\nstdout,\
    \ so if there is more than one tree, stdout will be a\nconcatenation of SVG documents.\
    \ These can be split into individual\nfiles with the csplit(1) command:\n$ nw_display\
    \ -s many_trees.nw > multiple_svg\n$ csplit -zs -f tree_ -b '%02d.svg' multiple_svg\
    \ '/<?xml/' {*}\nwill generate as many SVG files as there are Newick trees in\n\
    many_trees.nw. The files will be named tree_01.svg, tree_02.svg, etc."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_suppress_scale_bar
  doc: ': suppress scale bar (ignored for cladograms)'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_set_zero_scale
  doc: ": set the zero of the scale at the maximum depth instead of the root.\nThis\
    \ is useful when the branch lengths are in time units: zero marks\nthe present,\
    \ and the scale shows the age of the ancestral nodes."
  type: boolean
  inputBinding:
    prefix: -t
- id: in_string_used_drawn
  doc: ": string is used as unit name for scale bar (ignored\nif no scale bar is drawn)."
  type: string
  inputBinding:
    prefix: -u
- id: in_use_specified_map
  doc: ": use specified URL map [only SVG]. A URL map\nis a text file which specifies\
    \ a URL for a label.\nEach line has the following structure:\n<label> <URL>\n\
    Clicking on a label will follow the link (if any)."
  type: File
  inputBinding:
    prefix: -U
- id: in_number_pixels_leaves
  doc: ": number of pixels between leaves (default: 40) [only SVG\northogonal]"
  type: long
  inputBinding:
    prefix: -v
- id: in_set_width_scale
  doc: ": set width or scale (exclusive or...)\no If <number> is positive, then it\
    \ fixes the width - the graph will\nbe no wider than <number>, measured in columns\
    \ for text and pixels\nfor SVG. Defaults: 80 columns (text) or 300 px (SVG).\n\
    o If <number> is _negative_, then its absolute value is used as a\nfixed scale,\
    \ expressed in pixels/length units (SVG), or in\ncolumns/length units (text),\
    \ in which length units are usually\nsubstitutions/site (but see option -u). If\
    \ there are more than\none tree, then this fixed scale is applied to all of them."
  type: long
  inputBinding:
    prefix: -w
- id: in_use_estimate_width
  doc: ": use this as an estimate of the width of a leaf label\ncharacter (in pixels)\
    \ [only SVG]. This affects the space left for\nthe tree nodes. Default: 5.0 You\
    \ will probably need this if you\nchange the leaf label font properties (option\
    \ -l), especially size.\nYou will probably need trial and error to find the right\
    \ value."
  type: long
  inputBinding:
    prefix: -W
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_display
