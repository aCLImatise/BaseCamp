class: CommandLineTool
id: ../../../genePredToBed.cwl
inputs:
- id: in_xxx
  doc: ''
  type: string
  inputBinding:
    prefix: -xxx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genePredToBed
