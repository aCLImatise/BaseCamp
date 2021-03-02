class: CommandLineTool
id: LA4Ice.cwl
inputs:
- id: in_car_me_uf
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -carmEUF
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- LA4Ice
