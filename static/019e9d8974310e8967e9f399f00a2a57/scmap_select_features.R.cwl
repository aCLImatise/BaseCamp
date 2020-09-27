class: CommandLineTool
id: scmap_select_features.R.cwl
inputs:
- id: in_input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_n_features
  doc: Number of the features to be selected.
  type: long
  inputBinding:
    prefix: --n-features
- id: in_output_plot_file
  doc: Optional file name in which to store a PNG-format plot of log(expression) versus
    log(dropout) distribution for all genes. Selected features are highlighted with
    the red colour.
  type: File
  inputBinding:
    prefix: --output-plot-file
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_plot_file
  doc: Optional file name in which to store a PNG-format plot of log(expression) versus
    log(dropout) distribution for all genes. Selected features are highlighted with
    the red colour.
  type: File
  outputBinding:
    glob: $(inputs.in_output_plot_file)
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- scmap-select-features.R
