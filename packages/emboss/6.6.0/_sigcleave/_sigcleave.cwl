class: CommandLineTool
id: _sigcleave.cwl
inputs:
- id: in_min_weight
  doc: "float      [3.5] Minimum scoring weight value for the\npredicted cleavage\
    \ site (Number from 0.000\nto 100.000)"
  type: boolean
  inputBinding:
    prefix: -minweight
- id: in_prokaryote
  doc: "boolean    Specifies the sequence is prokaryotic and\nchanges the default\
    \ scoring data file name"
  type: boolean
  inputBinding:
    prefix: -prokaryote
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _sigcleave
