class: CommandLineTool
id: ../../../chooseK.py.cwl
inputs:
- id: in_input
  doc: ''
  type: File
  inputBinding:
    prefix: --input
- id: in_python
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
- chooseK.py
