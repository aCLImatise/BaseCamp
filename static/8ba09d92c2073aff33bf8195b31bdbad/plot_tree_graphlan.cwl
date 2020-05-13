class: CommandLineTool
id: plot_tree_graphlan.py.cwl
inputs:
- id: ifn_tree
  doc: The input tree in newick format.
  type: string
  inputBinding:
    prefix: --ifn_tree
- id: colorized_metadata
  doc: The metadata field to colorize. Default "unset".
  type: string
  inputBinding:
    prefix: --colorized_metadata
- id: fig_size
  doc: The figure size. Default "8".
  type: string
  inputBinding:
    prefix: --fig_size
- id: legend_marker_size
  doc: The legend marker size. Default "20".
  type: string
  inputBinding:
    prefix: --legend_marker_size
- id: legend_font_size
  doc: The legend font size. Default "10".
  type: string
  inputBinding:
    prefix: --legend_font_size
- id: legend_marker_edge_width
  doc: The legend marker edge width. Default "0.2".
  type: string
  inputBinding:
    prefix: --legend_marker_edge_width
- id: leaf_marker_size
  doc: The legend marker size. Default "20".
  type: string
  inputBinding:
    prefix: --leaf_marker_size
- id: leaf_marker_edge_width
  doc: The legend marker edge width. Default "0.2".
  type: string
  inputBinding:
    prefix: --leaf_marker_edge_width
- id: dpi
  doc: The figure dpi.
  type: string
  inputBinding:
    prefix: --dpi
- id: figure_extension
  doc: The figure extension. Default ".png".
  type: string
  inputBinding:
    prefix: --figure_extension
- id: of_n_prefix
  doc: The prefix of output files.
  type: string
  inputBinding:
    prefix: --ofn_prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_tree_graphlan.py
