class: CommandLineTool
id: _fconsense.cwl
inputs:
- id: in_method
  doc: "menu       [mre] Consensus method (Values: s (strict\nconsensus tree); mr\
    \ (Majority Rule); mre\n(Majority Rule (extended)); ml (Minimum\nfraction (0.5\
    \ to 1.0)))"
  type: boolean
  inputBinding:
    prefix: -method
- id: in_root
  doc: toggle     [N] Trees to be treated as Rooted
  type: boolean
  inputBinding:
    prefix: -root
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -outgrno
- id: in_file
  doc: 'Additional (Optional) qualifiers (* if not always prompted):'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _fconsense
