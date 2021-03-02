class: CommandLineTool
id: scater_plot_reduced_dim.R.cwl
inputs:
- id: in_input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_use_dim_red
  doc: A string or integer scalar indicating the reduced dimension result in reducedDims(object)
    to plot.
  type: long?
  inputBinding:
    prefix: --use-dimred
- id: in_n_components
  doc: A numeric scalar indicating the number of dimensions to plot, starting from
    the first dimension. Alternatively, a comma-separated specifying the dimensions
    to be plotted.
  type: long?
  inputBinding:
    prefix: --ncomponents
- id: in_percent_var
  doc: A comma-separated string giving the proportion of variance in expression explained
    by each reduced dimension. Only expected to be used in PCA settings, e.g., in
    the plotPCA function.
  type: string?
  inputBinding:
    prefix: --percent-var
- id: in_colour_by
  doc: Specification of a column metadata field or a feature to colour by.
  type: string?
  inputBinding:
    prefix: --colour-by
- id: in_shape_by
  doc: Specification of a column metadata field or a feature to shape by.
  type: string?
  inputBinding:
    prefix: --shape-by
- id: in_size_by
  doc: Specification of a column metadata field or a feature to shape by.
  type: long?
  inputBinding:
    prefix: --size-by
- id: in_by_exprs_values
  doc: A string or integer scalar specifying which assay to obtain expression values
    from, for use in point aesthetics.
  type: long?
  inputBinding:
    prefix: --by_exprs-values
- id: in_by_show_single
  doc: Logical scalar specifying whether single-level factors should be used for point
    aesthetics.
  type: string?
  inputBinding:
    prefix: --by_show_single
- id: in_png_width
  doc: Width of png (px).
  type: string?
  inputBinding:
    prefix: --png-width
- id: in_png_height
  doc: Height of png file (px).
  type: File?
  inputBinding:
    prefix: --png-height
- id: in_output_image_file
  doc: File name in which to save the PCA image
  type: File?
  inputBinding:
    prefix: --output-image-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_image_file
  doc: File name in which to save the PCA image
  type: File?
  outputBinding:
    glob: $(inputs.in_output_image_file)
hints: []
cwlVersion: v1.1
baseCommand:
- scater-plot-reduced-dim.R
