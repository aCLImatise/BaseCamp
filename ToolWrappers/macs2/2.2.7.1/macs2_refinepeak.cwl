class: CommandLineTool
id: macs2_refinepeak.cwl
inputs:
- id: in_i
  doc: ''
  type: File[]
  inputBinding:
    prefix: -i
- id: in_b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- macs2
- refinepeak
