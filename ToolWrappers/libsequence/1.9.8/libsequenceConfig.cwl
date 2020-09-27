class: CommandLineTool
id: libsequenceConfig.cwl
inputs:
- id: in_print
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_version
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- libsequenceConfig
