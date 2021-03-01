class: CommandLineTool
id: howdesbt_CAAGACCTATGAGTAGAACG.cwl
inputs:
- id: in_how_des_bt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- howdesbt
- CAAGACCTATGAGTAGAACG
