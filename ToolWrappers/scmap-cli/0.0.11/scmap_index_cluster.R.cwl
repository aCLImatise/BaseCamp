class: CommandLineTool
id: scmap_index_cluster.R.cwl
inputs:
- id: in_input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_cluster_col
  doc: Column name in the 'colData' slot of the SingleCellExperiment object containing
    the cell classification information.
  type: string?
  inputBinding:
    prefix: --cluster-col
- id: in_train_id
  doc: ID of the training dataset (optional)
  type: string?
  inputBinding:
    prefix: --train-id
- id: in_remove_mat
  doc: 'Should expression data be removed from index object? Default: FALSE'
  type: boolean?
  inputBinding:
    prefix: --remove-mat
- id: in_output_plot_file
  doc: Optional file name in which to store a PNG-format heatmap-style index visualisation.
  type: File?
  inputBinding:
    prefix: --output-plot-file
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File?
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_plot_file
  doc: Optional file name in which to store a PNG-format heatmap-style index visualisation.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_plot_file)
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scmap-cli:0.0.11--0
cwlVersion: v1.1
baseCommand:
- scmap-index-cluster.R
