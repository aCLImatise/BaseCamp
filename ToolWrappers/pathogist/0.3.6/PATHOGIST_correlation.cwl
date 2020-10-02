class: CommandLineTool
id: PATHOGIST_correlation.cwl
inputs:
- id: in_all_constraints
  doc: "add all constraints to the optimization problem, not\njust those with mixed\
    \ signs."
  type: boolean
  inputBinding:
    prefix: --all_constraints
- id: in_method
  doc: "Method for correlation clustering\n"
  type: string
  inputBinding:
    prefix: --method
- id: in_distance_matrix
  doc: path to the distance matrix file
  type: string
  inputBinding:
    position: 0
- id: in_threshold
  doc: threshold value for correlation
  type: string
  inputBinding:
    position: 1
- id: in_output_path
  doc: path to write cluster output tsv file
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PATHOGIST
- correlation
