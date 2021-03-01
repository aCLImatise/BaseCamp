class: CommandLineTool
id: extract_seq.cwl
inputs:
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extract_seq
