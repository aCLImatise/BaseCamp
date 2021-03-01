class: CommandLineTool
id: scmap_index_cell.R.cwl
inputs:
- id: in_input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_number_chunks
  doc: Number of chunks into which the expr matrix is split.
  type: long?
  inputBinding:
    prefix: --number-chunks
- id: in_number_clusters
  doc: Number of clusters per group for k-means clustering.
  type: long?
  inputBinding:
    prefix: --number-clusters
- id: in_train_id
  doc: ID of the training dataset (optional)
  type: string?
  inputBinding:
    prefix: --train-id
- id: in_random_seed
  doc: Set random seed to make scmap-cell reproducible.
  type: string?
  inputBinding:
    prefix: --random-seed
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File?
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
hints: []
cwlVersion: v1.1
baseCommand:
- scmap-index-cell.R
