class: CommandLineTool
id: ../../../card_trick.cwl
inputs:
- id: in_man
  doc: Additional information
  type: boolean
  inputBinding:
    prefix: --man
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- card-trick
