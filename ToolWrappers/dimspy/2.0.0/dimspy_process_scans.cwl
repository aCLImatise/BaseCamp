class: CommandLineTool
id: dimspy_process_scans.cwl
inputs:
- id: in_m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
- id: in_l
  doc: ''
  type: File
  inputBinding:
    prefix: -l
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dimspy
- process-scans
