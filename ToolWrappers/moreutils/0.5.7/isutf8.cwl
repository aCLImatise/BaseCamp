class: CommandLineTool
id: isutf8.cwl
inputs:
- id: in_quiet
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_hq
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -hq
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- isutf8
