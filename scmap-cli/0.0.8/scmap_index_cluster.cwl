class: CommandLineTool
id: scmap_index_cluster.R.cwl
inputs:
- id: input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: cluster_col
  doc: Column name in the 'colData' slot of the SingleCellExperiment object containing
    the cell classification information.
  type: string
  inputBinding:
    prefix: --cluster-col
- id: train_id
  doc: ID of the training dataset (optional)
  type: string
  inputBinding:
    prefix: --train-id
- id: output_plot_file
  doc: Optional file name in which to store a PNG-format heatmap-style index visualisation.
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
- scmap-index-cluster.R
