class: CommandLineTool
id: ../../../predict.py.cwl
inputs:
- id: in_k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- predict.py
