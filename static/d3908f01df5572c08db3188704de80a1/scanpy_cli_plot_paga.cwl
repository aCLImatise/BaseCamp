class: CommandLineTool
id: scanpy_cli_plot_paga.cwl
inputs:
- id: input_format
  doc: '[anndata|loom] Input object format.  [default: anndata]'
  type: boolean
  inputBinding:
    prefix: --input-format
- id: fig_size
  doc: ',INTEGER      Figure size.  [default: 7,7]'
  type: long
  inputBinding:
    prefix: --fig-size
- id: fig_dpi
  doc: 'Figure DPI.  [default: 80]'
  type: long
  inputBinding:
    prefix: --fig-dpi
- id: fig_font_size
  doc: 'Figure font size.  [default: 15]'
  type: long
  inputBinding:
    prefix: --fig-fontsize
- id: frame_on
  doc: '/ --frameoff          Draw a frame around the plot  [default: True]'
  type: boolean
  inputBinding:
    prefix: --frameon
- id: title
  doc: '[,TEXT...]          Provide title for the plot or panels.'
  type: string
  inputBinding:
    prefix: --title
- id: use_key
  doc: 'The key in `.uns` that contains trajectory information.  [default: paga]'
  type: string
  inputBinding:
    prefix: --use-key
- id: layout
  doc: '[fa|fr|grid_fr|kk|lgl|drl|rt] Plotting layout that computes positions. [default:
    fr]'
  type: boolean
  inputBinding:
    prefix: --layout
- id: in_it_pos
  doc: Plotting layout that computes positions.
  type: string
  inputBinding:
    prefix: --init-pos
- id: threshold
  doc: 'Do not draw edges for weights below this threshold. Set to 0 to include all
    edges. [default: 0.01]'
  type: double
  inputBinding:
    prefix: --threshold
- id: root
  doc: 'If choosing a tree layout, this is the index of the root node.  [default:
    0]'
  type: long
  inputBinding:
    prefix: --root
- id: transitions
  doc: Key for `.uns["paga"]` that specifies the matrix, e.g. `transition_confidence`,
    that stores the arrows.
  type: string
  inputBinding:
    prefix: --transitions
- id: single_component
  doc: 'Restrict to largest connected component [default: False]'
  type: boolean
  inputBinding:
    prefix: --single-component
- id: solid_edges
  doc: '[connectivities|connectivities_tree] Key for `.uns["paga"]` that specifies
    the matrix that stores the edges to be drawn solid black.  [default: connectivities]'
  type: boolean
  inputBinding:
    prefix: --solid-edges
- id: basis
  doc: Name of the embedding to plot, must be a key of `.obsm` without the prefix
    "X_".
  type: string
  inputBinding:
    prefix: --basis
- id: color
  doc: Key for annotation of observations/cells or variables/genes.
  type: string
  inputBinding:
    prefix: --color
- id: legend_loc
  doc: '[right margin|on data] Location of legend, either "on data", "right margin"
    or valid keywords for `matplotlib.legend`.  [default: right margin]'
  type: boolean
  inputBinding:
    prefix: --legend-loc
- id: size
  doc: Point size. Automatically computed if not specified.
  type: double
  inputBinding:
    prefix: --size
- id: node_size_scale
  doc: 'Increase of decrease the size of the nodes. [default: 1.0]'
  type: double
  inputBinding:
    prefix: --node-size-scale
- id: font_size
  doc: Font size for node labels.
  type: long
  inputBinding:
    prefix: --fontsize
- id: edge_width_scale
  doc: 'Increase of decrease the width of the edges. [default: 1.0]'
  type: double
  inputBinding:
    prefix: --edge-width-scale
- id: arrowsize
  doc: 'For directed graphs, specify the length and width of the arrowhead.  [default:
    30]'
  type: long
  inputBinding:
    prefix: --arrowsize
outputs: []
cwlVersion: v1.1
baseCommand:
- scanpy-cli
- plot
- paga
