class: CommandLineTool
id: h5debug.cwl
inputs:
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_signature_addr
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_extra
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h5debug
