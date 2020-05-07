class: CommandLineTool
id: scmap_index_cell.R.cwl
inputs:
- id: input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: number_chunks
  doc: Number of chunks into which the expr matrix is split.
  type: string
  inputBinding:
    prefix: --number-chunks
- id: number_clusters
  doc: Number of clusters per group for k-means clustering.
  type: string
  inputBinding:
    prefix: --number-clusters
- id: train_id
  doc: ID of the training dataset (optional)
  type: string
  inputBinding:
    prefix: --train-id
- id: random_seed
  doc: Set random seed to make scmap-cell reproducible.
  type: string
  inputBinding:
    prefix: --random-seed
- id: output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- scmap-index-cell.R
