class: CommandLineTool
id: fdnadist_matrix.cwl
inputs:
- id: in_method
  doc: "menu       [F84 distance model] Choose the method to\nuse (Values: f (F84\
    \ distance model); k\n(Kimura 2-parameter distance); j\n(Jukes-Cantor distance);\
    \ l (LogDet\ndistance); s (Similarity table))"
  type: boolean
  inputBinding:
    prefix: -method
- id: in_weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: in_lower
  doc: boolean    [N] Output as a lower triangular distance
  type: boolean
  inputBinding:
    prefix: -lower
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
- id: in_file
  doc: 'Additional (Optional) qualifiers (* if not always prompted):'
  type: File
  inputBinding:
    position: 0
- id: in_matrix
  doc: -humanreadable      boolean    [@($(method)==s?Y:N)] Output as a
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fdnadist
- matrix
