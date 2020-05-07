class: CommandLineTool
id: seurat_dim_plot.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string
  inputBinding:
    prefix: --input-format
- id: reduction_use
  doc: Which dimensionality reduction to use. Default is "pca", can also be "tsne",
    or "ica", assuming these are precomputed.
  type: string
  inputBinding:
    prefix: --reduction-use
- id: dim_1
  doc: Dimension for x-axis (default 1)
  type: string
  inputBinding:
    prefix: --dim-1
- id: dim_2
  doc: Dimension for y-axis (default 2)
  type: string
  inputBinding:
    prefix: --dim-2
- id: cells_use
  doc: File to be used to derive a vector of cells to plot (default is all cells).
  type: string
  inputBinding:
    prefix: --cells-use
- id: pt_size
  doc: Adjust point size for plotting
  type: string
  inputBinding:
    prefix: --pt-size
- id: label_size
  doc: Sets size of labels.
  type: string
  inputBinding:
    prefix: --label-size
- id: do_label
  doc: Whether to label the clusters.
  type: string
  inputBinding:
    prefix: --do-label
- id: group_by
  doc: Group (color) cells in different ways (for example, orig.ident).
  type: string
  inputBinding:
    prefix: --group-by
- id: plot_title
  doc: Title for plot.
  type: string
  inputBinding:
    prefix: --plot-title
- id: do_bare
  doc: 'Do only minimal formatting (default : FALSE)'
  type: string
  inputBinding:
    prefix: --do-bare
- id: cols_use
  doc: Comma-separated list of colors, each color corresponds to an identity class.
    By default, ggplot assigns colors.
  type: string
  inputBinding:
    prefix: --cols-use
- id: pt_shape
  doc: If NULL, all points are circles (default). You can specify any cell attribute
    (that can be pulled with FetchData) allowing for both different colors and different
    shapes on cells.
  type: string
  inputBinding:
    prefix: --pt-shape
- id: coord_fixed
  doc: Use a fixed scale coordinate system (for spatial coordinates). Default is FALSE
  type: string
  inputBinding:
    prefix: --coord-fixed
- id: no_axes
  doc: Setting to TRUE will remove the axes.
  type: string
  inputBinding:
    prefix: --no-axes
- id: dark_theme
  doc: Use a dark theme for the plot.
  type: string
  inputBinding:
    prefix: --dark-theme
- id: plot_order
  doc: Comma-separated string specifying the order of plotting for the idents (clusters).
    This can be useful for crowded plots if points of interest are being buried. Provide
    either a full list of valid idents or a subset to be plotted last (on top)..
  type: string
  inputBinding:
    prefix: --plot-order
- id: png_width
  doc: Width of png (px).
  type: string
  inputBinding:
    prefix: --png-width
- id: png_height
  doc: Height of png file (px).
  type: string
  inputBinding:
    prefix: --png-height
- id: output_image_file
  doc: File name in which to save the PCA image
  type: string
  inputBinding:
    prefix: --output-image-file
outputs: []
cwlVersion: v1.1
baseCommand:
- seurat-dim-plot.R
