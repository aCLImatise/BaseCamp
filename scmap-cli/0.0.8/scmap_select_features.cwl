class: CommandLineTool
id: scmap_select_features.R.cwl
inputs:
- id: input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: n_features
  doc: Number of the features to be selected.
  type: string
  inputBinding:
    prefix: --n-features
- id: output_plot_file
  doc: Optional file name in which to store a PNG-format plot of log(expression) versus
    log(dropout) distribution for all genes. Selected features are highlighted with
    the red colour.
  type: string
  inputBinding:
    prefix: --output-plot-file
- id: output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- scmap-select-features.R
