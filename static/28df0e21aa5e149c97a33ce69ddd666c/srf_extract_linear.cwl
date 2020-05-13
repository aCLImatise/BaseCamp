class: CommandLineTool
id: srf_extract_linear.cwl
inputs:
- id: extract_linear_srf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: archive_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: trace_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_extract_linear
