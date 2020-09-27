class: CommandLineTool
id: trace_seq.cwl
inputs:
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_extract_seq
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
- trace_seq
