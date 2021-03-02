class: CommandLineTool
id: monocle3_plotCells.cwl
inputs:
- id: in_input_object_format
  doc: 'Format of input object. [Default: cds3]'
  type: long?
  inputBinding:
    prefix: --input-object-format
- id: in_output_plot_format
  doc: 'Format of output plot, choose from {png, pdf}. [Default: png]'
  type: string?
  inputBinding:
    prefix: --output-plot-format
- id: in_xdim
  doc: 'The column of reducedDimS(cds) to plot on the horizontal axis. [Default: 1]'
  type: long?
  inputBinding:
    prefix: --xdim
- id: in_ydim
  doc: 'The column of reducedDimS(cds) to plot on the vertical axis. [Default: 2]'
  type: long?
  inputBinding:
    prefix: --ydim
- id: in_reduction_method
  doc: 'The dimensionality reduction for plotting, choose from {UMAP, tSNE, PCA, LSI}.
    [Default: UMAP]'
  type: string?
  inputBinding:
    prefix: --reduction-method
- id: in_color_cells_by
  doc: "The cell attribute (e.g. the column of pData(cds)) to map to each cell's color,\
    \ or one of {clusters, partitions, pseudotime}. [Default: pseudotime]"
  type: string?
  inputBinding:
    prefix: --color-cells-by
- id: in_genes
  doc: A comma-separated list of gene IDs/short names to plot, one per panel.
  type: string?
  inputBinding:
    prefix: --genes
- id: in_norm_method
  doc: 'Determines how to transform expression values for plotting, choose from {log,
    size_only}. [Default: log]'
  type: string?
  inputBinding:
    prefix: --norm-method
- id: in_cell_size
  doc: 'The size of the point for each cell. [Default: 1.5]'
  type: long?
  inputBinding:
    prefix: --cell-size
- id: in_alpha
  doc: The alpha aesthetics for the original cell points, useful to highlight the
    learned principal graph.
  type: string?
  inputBinding:
    prefix: --alpha
- id: in_label_cell_groups
  doc: If set, display the cell group names directly on the plot. Otherwise include
    a color legend on the side of the plot.
  type: boolean?
  inputBinding:
    prefix: --label-cell-groups
- id: in_no_trajectory_graph
  doc: When this option is set, skip displaying the trajectory graph inferred by learn_graph().
  type: boolean?
  inputBinding:
    prefix: --no-trajectory-graph
- id: in_label_groups_by_cluster
  doc: If set, and setting --color-cells-by to something other than cluster, label
    the cells of each cluster independently. Can result in duplicate labels being
    present in the manifold.
  type: boolean?
  inputBinding:
    prefix: --label-groups-by-cluster
- id: in_label_leaves
  doc: If set, label the leaves of the principal graph.
  type: boolean?
  inputBinding:
    prefix: --label-leaves
- id: in_label_roots
  doc: If set, label the roots of the principal graph.
  type: boolean?
  inputBinding:
    prefix: --label-roots
- id: in_label_branch_points
  doc: If set, label the branch points of the principal graph.
  type: boolean?
  inputBinding:
    prefix: --label-branch-points
- id: in_verbose
  doc: Emit verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_object
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_plot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- monocle3
- plotCells
