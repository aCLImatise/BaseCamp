class: CommandLineTool
id: ../../../arrow_cannedkeys_findKeyByValue.cwl
inputs:
- id: in_value
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arrow
- cannedkeys
- findKeyByValue
