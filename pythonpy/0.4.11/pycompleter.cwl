class: CommandLineTool
id: ../../../pycompleter.cwl
inputs:
- id: in_si
  doc: ''
  type: boolean
  inputBinding:
    prefix: --si
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pycompleter
