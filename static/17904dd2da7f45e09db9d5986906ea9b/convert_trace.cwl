class: CommandLineTool
id: ../../../convert_trace.cwl
inputs:
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_format
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_trace
