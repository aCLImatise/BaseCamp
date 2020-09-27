class: CommandLineTool
id: fastx_artifacts_filter.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
- id: in_z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
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
- fastx_artifacts_filter
