class: CommandLineTool
id: scmap_scmap_cluster.R.cwl
inputs:
- id: index_object_file
  doc: "'SingleCellExperiment' object previously prepared with the scmap-index-cluster.R\
    \ script."
  type: string
  inputBinding:
    prefix: --index-object-file
- id: projection_object_file
  doc: "'SingleCellExperiment' object to project."
  type: string
  inputBinding:
    prefix: --projection-object-file
- id: threshold
  doc: Threshold on similarity (or probability for SVM and RF).
  type: string
  inputBinding:
    prefix: --threshold
- id: output_text_file
  doc: File name in which to text-format cell type assignments.
  type: string
  inputBinding:
    prefix: --output-text-file
- id: output_object_file
  doc: File name in which to store serialized R object of type 'SingleCellExperiment'.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- scmap-scmap-cluster.R
