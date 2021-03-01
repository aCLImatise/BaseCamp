class: CommandLineTool
id: lyner_dendro.cwl
inputs:
- id: in_axis
  doc: RANGE
  type: long?
  inputBinding:
    prefix: --axis
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lyner
- dendro
