class: CommandLineTool
id: DuplexFold_seq file 1_seq file 2.cwl
inputs:
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- DuplexFold
- seq file 1
- seq file 2
