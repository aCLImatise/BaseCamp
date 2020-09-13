class: CommandLineTool
id: ../../../pycompleter2.cwl
inputs:
- id: in_jo
  doc: ''
  type: boolean
  inputBinding:
    prefix: --jo
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pycompleter2
