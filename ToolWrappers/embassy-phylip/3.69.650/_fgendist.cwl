class: CommandLineTool
id: _fgendist.cwl
inputs:
- id: in_method
  doc: "menu       [n] Which method to use (Values: n (Nei\ngenetic distance); c (Cavalli-Sforza\
    \ chord\nmeasure); r (Reynolds genetic distance))"
  type: boolean?
  inputBinding:
    prefix: -method
- id: in_lower
  doc: boolean    [N] Lower triangular distance matrix
  type: boolean?
  inputBinding:
    prefix: -lower
- id: in_file
  doc: 'Additional (Optional) qualifiers:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _fgendist
