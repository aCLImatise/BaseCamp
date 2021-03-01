class: CommandLineTool
id: lyner_autoencode.cwl
inputs:
- id: in_validation_split
  doc: RANGE
  type: long?
  inputBinding:
    prefix: --validation-split
- id: in_adjust_weights
  doc: '[discard|nodes|weights]'
  type: double?
  inputBinding:
    prefix: --adjust-weights
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lyner
- autoencode
