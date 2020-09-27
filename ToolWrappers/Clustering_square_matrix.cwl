class: CommandLineTool
id: Clustering_square_matrix.cwl
inputs:
- id: in_column_matrix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_id_mapping
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_matrix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Clustering
- square-matrix
