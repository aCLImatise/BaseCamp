class: CommandLineTool
id: vendian.cwl
inputs:
- id: in_bytes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vendian
