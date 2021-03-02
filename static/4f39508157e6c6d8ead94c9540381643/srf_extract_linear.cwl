class: CommandLineTool
id: srf_extract_linear.cwl
inputs:
- id: in_extract_linear_srf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_archive_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_trace_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- srf_extract_linear
