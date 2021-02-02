class: CommandLineTool
id: ../../../caper.cwl
inputs:
- id: in_conf
  doc: Specify config file
  type: File
  inputBinding:
    prefix: --conf
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
- caper
