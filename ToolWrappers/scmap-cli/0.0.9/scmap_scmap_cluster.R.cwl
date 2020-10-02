class: CommandLineTool
id: scmap_scmap_cluster.R.cwl
inputs:
- id: in_index_object_file
  doc: "'SingleCellExperiment' object previously prepared with the scmap-index-cluster.R\
    \ script."
  type: File
  inputBinding:
    prefix: --index-object-file
- id: in_projection_object_file
  doc: "'SingleCellExperiment' object to project."
  type: File
  inputBinding:
    prefix: --projection-object-file
- id: in_threshold
  doc: Threshold on similarity (or probability for SVM and RF).
  type: string
  inputBinding:
    prefix: --threshold
- id: in_output_text_file
  doc: File name in which to text-format cell type assignments.
  type: File
  inputBinding:
    prefix: --output-text-file
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_text_file
  doc: File name in which to text-format cell type assignments.
  type: File
  outputBinding:
    glob: $(inputs.in_output_text_file)
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- scmap-scmap-cluster.R
