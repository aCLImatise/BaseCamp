class: CommandLineTool
id: plot_tree_graphlan.py.cwl
inputs:
- id: in_ifn_tree
  doc: The input tree in newick format.
  type: string
  inputBinding:
    prefix: --ifn_tree
- id: in_colorized_metadata
  doc: The metadata field to colorize. Default "unset".
  type: string
  inputBinding:
    prefix: --colorized_metadata
- id: in_fig_size
  doc: The figure size. Default "8".
  type: long
  inputBinding:
    prefix: --fig_size
- id: in_legend_marker_size
  doc: The legend marker size. Default "20".
  type: long
  inputBinding:
    prefix: --legend_marker_size
- id: in_legend_font_size
  doc: The legend font size. Default "10".
  type: long
  inputBinding:
    prefix: --legend_font_size
- id: in_legend_marker_edge_width
  doc: The legend marker edge width. Default "0.2".
  type: double
  inputBinding:
    prefix: --legend_marker_edge_width
- id: in_leaf_marker_size
  doc: The legend marker size. Default "20".
  type: long
  inputBinding:
    prefix: --leaf_marker_size
- id: in_leaf_marker_edge_width
  doc: The legend marker edge width. Default "0.2".
  type: double
  inputBinding:
    prefix: --leaf_marker_edge_width
- id: in_dpi
  doc: The figure dpi.
  type: string
  inputBinding:
    prefix: --dpi
- id: in_figure_extension
  doc: The figure extension. Default ".png".
  type: string
  inputBinding:
    prefix: --figure_extension
- id: in_of_n_prefix
  doc: "The prefix of output files.\n"
  type: string
  inputBinding:
    prefix: --ofn_prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plot_tree_graphlan.py
