class: CommandLineTool
id: ../../../nw_trim.cwl
inputs:
- id: in_ah
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ah
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_trim
