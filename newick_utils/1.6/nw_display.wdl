version 1.0

task NwDisplay {
  input {
    Int? rotate_labels_amount
    Int? rotate_leftside_labels
    Int? css_branch_length
    File? use_specified_file_css
    Int? css_overridden_strokeblackfillnonestrokewidthstrokelinecapround
    Int? graph_style_text
    Int? css_inner_node
    String? sets_position_inner
    Int? css_leaf_node
    Int? add_number_pixels
    File? use_specified_file_see
    Int? integer_use_many
    Boolean? draw_default_orthogonal
    Boolean? output_graph_svg
    Boolean? suppress_scale_bar
    Boolean? set_zero_scale
    String? string_used_drawn
    File? use_specified_map
    Int? number_pixels_leaves
    Int? set_width_scale
    Int? use_estimate_width
  }
  command <<<
    nw_display \
      ~{if defined(rotate_labels_amount) then ("-a " +  '"' + rotate_labels_amount + '"') else ""} \
      ~{if defined(rotate_leftside_labels) then ("-A " +  '"' + rotate_leftside_labels + '"') else ""} \
      ~{if defined(css_branch_length) then ("-b " +  '"' + css_branch_length + '"') else ""} \
      ~{if defined(use_specified_file_css) then ("-c " +  '"' + use_specified_file_css + '"') else ""} \
      ~{if defined(css_overridden_strokeblackfillnonestrokewidthstrokelinecapround) then ("-d " +  '"' + css_overridden_strokeblackfillnonestrokewidthstrokelinecapround + '"') else ""} \
      ~{if defined(graph_style_text) then ("-e " +  '"' + graph_style_text + '"') else ""} \
      ~{if defined(css_inner_node) then ("-i " +  '"' + css_inner_node + '"') else ""} \
      ~{if defined(sets_position_inner) then ("-I " +  '"' + sets_position_inner + '"') else ""} \
      ~{if defined(css_leaf_node) then ("-l " +  '"' + css_leaf_node + '"') else ""} \
      ~{if defined(add_number_pixels) then ("-n " +  '"' + add_number_pixels + '"') else ""} \
      ~{if defined(use_specified_file_see) then ("-o " +  '"' + use_specified_file_see + '"') else ""} \
      ~{if defined(integer_use_many) then ("-R " +  '"' + integer_use_many + '"') else ""} \
      ~{if (draw_default_orthogonal) then "-r" else ""} \
      ~{if (output_graph_svg) then "-s" else ""} \
      ~{if (suppress_scale_bar) then "-S" else ""} \
      ~{if (set_zero_scale) then "-t" else ""} \
      ~{if defined(string_used_drawn) then ("-u " +  '"' + string_used_drawn + '"') else ""} \
      ~{if defined(use_specified_map) then ("-U " +  '"' + use_specified_map + '"') else ""} \
      ~{if defined(number_pixels_leaves) then ("-v " +  '"' + number_pixels_leaves + '"') else ""} \
      ~{if defined(set_width_scale) then ("-w " +  '"' + set_width_scale + '"') else ""} \
      ~{if defined(use_estimate_width) then ("-W " +  '"' + use_estimate_width + '"') else ""}
  >>>
  parameter_meta {
    rotate_labels_amount: ": rotate all labels by this amount (radians, default: 0)\\n[only SVG radial]"
    rotate_leftside_labels: ": rotate left-side labels by this amount (radians,\\ndefault: 0.0349 (=~ 2°)) [only SVG radial]"
    css_branch_length: ": CSS for branch length labels. [only SVG]\\nDefault: 'font-size:small;font-family:sans'.\\nsetting 'opacity:0' disables printing of branch lengths."
    use_specified_file_css: ": use specified file as CSS map [only SVG]. A CSS map\\nis a text file which specifies a style (CSS) for a clade.\\nEach line has the following structure:\\n<CSS> <flag> <label>+\\n<CSS> is a valid CSS style specification (no spaces allowed)\\ne.g. 'font-size:small;font-family:italics;stroke:green'.\\n<flag> is 'Individual', 'Clade', or 'Label' (case is not important,\\ncan be abbreviated down to 'I', 'C'i or 'L').\\nIf set to 'Clade', the style is applied to the clade defined by\\nthe labels. If 'Individual', the style is applied to each node\\nindividually.\\n<label>+ is a nonempty, whitespace-separated list of Newick labels\\n(spaces are allowed IFF the label is enclosed in ''). If a label\\nmatches more than one node, all matching nodes are used.\\nDefault: no CSS map, whole tree is black (unless specified otherwise\\nvia option -d).\\n<CSS>, <flag>, and <labels>+ are separated by whitespace.\\nThe following specifies red stroke for a clade defined by A, B and C;\\n2-pixel wide, blue stroke for individual nodes D, E, and F, and\\ngreen italics for the labels 'A' and 'D'.\\nstroke:red                       Clade   A B C\\nstroke:blue;stroke-width:2       I       D E F\\nfill:green;font-style:italic     L       A D\\nIf no colormap is specified, the default is (but see option -d):\\nstroke:black;fill:none;stroke-width:1;stroke-linecap:round"
    css_overridden_strokeblackfillnonestrokewidthstrokelinecapround: ": CSS for 'plain' tree nodes (i.e., unless overridden by -c)\\n[only SVG]\\nDefault: stroke:black;fill:none;stroke-width:1;stroke-linecap:round"
    graph_style_text: ": graph style (Text only). Values are:\\nraw:             uses |, - , + and = .\\ncommas:          angles with , and'\\nslashes: angles with \\ and /\\nvt100:           use VT-100 box-drawing characters\\nOnly the first character is looked at, and case is not significant.\\nThe default is slashes. This can be overridden by setting environment\\nvariable NW_DISPLAY_TEXT_STYLE to one of the above values.\\nNOTE: this is a rare case of a Newick Utils program not being\\nbackward-compatible. Even the 'raw' style does not exactly match the\\nprevious output (but this was buggy, the current output is different\\nbecause it fixes problems)."
    css_inner_node: ": CSS for inner node labels. [only SVG]\\nDefault: 'font-size:small;font-family:sans'.\\nsetting 'visibility:hidden' disables printing of inner node labels."
    sets_position_inner: "sets the position of the inner node label. Valid options are\\n'l' (near the leaves), 'm' (middle) or 'r' (near the root). Default\\nis 'l'."
    css_leaf_node: ": CSS for leaf node labels. [only SVG]\\nDefault: 'font-size:medium;font-family:sans'.\\nsetting 'visibility:hidden' disables printing of leaf node labels.\\nNote: if you change this, you will probably need to adjust the\\nspace allocated to leaf labels - see option -W."
    add_number_pixels: "add this number of pixels to the horizontal position of\\nnode labels. [SVG only]"
    use_specified_file_see: ": use specified file as ornament map. Works like the CSS\\nmap (see option -c), except that it specifies arbitrary SVG snippets\\ninstead of CSS styles. For example, the following\\n\\\"<circle style='fill:red' r='5'>\\\" Clade A B C\\nwill draw a red circle of radius 5 at the root of the clade defined\\nby nodes A, B, and C. Keyword 'Individual' is also accepted and\\nworks like for CSS."
    integer_use_many: ": if <integer> is > 0, use that many pixels for the root\\nif it has no length[only SVG]; if it is 0, suppress the root's edge\\nlength, if it has a length.\\nThe default is 10 pixels (SVG) or 1 character (text)."
    draw_default_orthogonal: ": draw a radial tree (default: orthogonal) [only SVG]"
    output_graph_svg: ": output graph as SVG (default: ASCII graphics). All output is on\\nstdout, so if there is more than one tree, stdout will be a\\nconcatenation of SVG documents. These can be split into individual\\nfiles with the csplit(1) command:\\n$ nw_display -s many_trees.nw > multiple_svg\\n$ csplit -zs -f tree_ -b '%02d.svg' multiple_svg '/<?xml/' {*}\\nwill generate as many SVG files as there are Newick trees in\\nmany_trees.nw. The files will be named tree_01.svg, tree_02.svg, etc."
    suppress_scale_bar: ": suppress scale bar (ignored for cladograms)"
    set_zero_scale: ": set the zero of the scale at the maximum depth instead of the root.\\nThis is useful when the branch lengths are in time units: zero marks\\nthe present, and the scale shows the age of the ancestral nodes."
    string_used_drawn: ": string is used as unit name for scale bar (ignored\\nif no scale bar is drawn)."
    use_specified_map: ": use specified URL map [only SVG]. A URL map\\nis a text file which specifies a URL for a label.\\nEach line has the following structure:\\n<label> <URL>\\nClicking on a label will follow the link (if any)."
    number_pixels_leaves: ": number of pixels between leaves (default: 40) [only SVG\\northogonal]"
    set_width_scale: ": set width or scale (exclusive or...)\\no If <number> is positive, then it fixes the width - the graph will\\nbe no wider than <number>, measured in columns for text and pixels\\nfor SVG. Defaults: 80 columns (text) or 300 px (SVG).\\no If <number> is _negative_, then its absolute value is used as a\\nfixed scale, expressed in pixels/length units (SVG), or in\\ncolumns/length units (text), in which length units are usually\\nsubstitutions/site (but see option -u). If there are more than\\none tree, then this fixed scale is applied to all of them."
    use_estimate_width: ": use this as an estimate of the width of a leaf label\\ncharacter (in pixels) [only SVG]. This affects the space left for\\nthe tree nodes. Default: 5.0 You will probably need this if you\\nchange the leaf label font properties (option -l), especially size.\\nYou will probably need trial and error to find the right value."
  }
  output {
    File out_stdout = stdout()
  }
}