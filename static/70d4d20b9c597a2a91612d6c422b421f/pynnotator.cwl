class: CommandLineTool
id: ../../../pynnotator.cwl
inputs:
- id: in_b
  doc: ''
  type: long
  inputBinding:
    prefix: -b
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
- pynnotator
