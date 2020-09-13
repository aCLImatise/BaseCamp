class: CommandLineTool
id: ../../../pycompleter2.7.cwl
inputs:
- id: in_ji
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ji
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pycompleter2.7
