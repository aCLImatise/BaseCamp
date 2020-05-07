class: CommandLineTool
id: filter_distance_matrix.py.cwl
inputs:
- id: input_distance_matrix
  doc: the input distance matrix [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_distance_matrix
- id: output_distance_matrix
  doc: path to store the output distance matrix [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_distance_matrix
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_distance_matrix.py
