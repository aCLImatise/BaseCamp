#!/usr/bin/env cwl-runner

baseCommand:
- seurat-dim-plot.R
class: CommandLineTool
cwlVersion: v1.0
id: seurat-dim-plot.r
inputs:
- doc: File name in which a serialized R matrix object may be found.
  id: input_object_file
  inputBinding:
    prefix: --input-object-file
  type: string
- doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: Which dimensionality reduction to use. Default is "pca", can also be "tsne",
    or "ica", assuming these are precomputed.
  id: reduction_use
  inputBinding:
    prefix: --reduction-use
  type: string
- doc: Dimension for x-axis (default 1)
  id: dim_1
  inputBinding:
    prefix: --dim-1
  type: string
- doc: Dimension for y-axis (default 2)
  id: dim_2
  inputBinding:
    prefix: --dim-2
  type: string
- doc: File to be used to derive a vector of cells to plot (default is all cells).
  id: cells_use
  inputBinding:
    prefix: --cells-use
  type: string
- doc: Adjust point size for plotting
  id: pt_size
  inputBinding:
    prefix: --pt-size
  type: string
- doc: Sets size of labels.
  id: label_size
  inputBinding:
    prefix: --label-size
  type: string
- doc: Whether to label the clusters.
  id: do_label
  inputBinding:
    prefix: --do-label
  type: string
- doc: Group (color) cells in different ways (for example, orig.ident).
  id: group_by
  inputBinding:
    prefix: --group-by
  type: string
- doc: Title for plot.
  id: plot_title
  inputBinding:
    prefix: --plot-title
  type: string
- doc: 'Do only minimal formatting (default : FALSE)'
  id: do_bare
  inputBinding:
    prefix: --do-bare
  type: string
- doc: Comma-separated list of colors, each color corresponds to an identity class.
    By default, ggplot assigns colors.
  id: cols_use
  inputBinding:
    prefix: --cols-use
  type: string
- doc: If NULL, all points are circles (default). You can specify any cell attribute
    (that can be pulled with FetchData) allowing for both different colors and different
    shapes on cells.
  id: pt_shape
  inputBinding:
    prefix: --pt-shape
  type: string
- doc: Use a fixed scale coordinate system (for spatial coordinates). Default is FALSE
  id: coord_fixed
  inputBinding:
    prefix: --coord-fixed
  type: string
- doc: Setting to TRUE will remove the axes.
  id: no_axes
  inputBinding:
    prefix: --no-axes
  type: string
- doc: Use a dark theme for the plot.
  id: dark_theme
  inputBinding:
    prefix: --dark-theme
  type: string
- doc: Comma-separated string specifying the order of plotting for the idents (clusters).
    This can be useful for crowded plots if points of interest are being buried. Provide
    either a full list of valid idents or a subset to be plotted last (on top)..
  id: plot_order
  inputBinding:
    prefix: --plot-order
  type: string
- doc: Width of png (px).
  id: png_width
  inputBinding:
    prefix: --png-width
  type: string
- doc: Height of png file (px).
  id: png_height
  inputBinding:
    prefix: --png-height
  type: string
- doc: File name in which to save the PCA image
  id: output_image_file
  inputBinding:
    prefix: --output-image-file
  type: string
