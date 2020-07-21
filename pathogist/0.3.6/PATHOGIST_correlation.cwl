class: CommandLineTool
id: ../../../PATHOGIST_correlation.cwl
inputs:
- id: all_constraints
  doc: add all constraints to the optimization problem, not just those with mixed
    signs.
  type: boolean
  inputBinding:
    prefix: --all_constraints
- id: method
  doc: Method for correlation clustering
  type: string
  inputBinding:
    prefix: --method
- id: distance_matrix
  doc: path to the distance matrix file
  type: string
  inputBinding:
    position: 0
- id: threshold
  doc: threshold value for correlation
  type: string
  inputBinding:
    position: 1
- id: output_path
  doc: path to write cluster output tsv file
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- PATHOGIST
- correlation
