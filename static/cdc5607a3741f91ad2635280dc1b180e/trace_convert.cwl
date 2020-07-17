class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/trace_convert.cwl
inputs:
- id: convert_trace
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_format
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- trace_convert
