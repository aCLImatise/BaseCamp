class: CommandLineTool
id: ../../../drawmodel.cwl
inputs:
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_landscape
  doc: ''
  type: boolean
  inputBinding:
    prefix: -landscape
- id: in_mod
  doc: '[n]      Draw first or nth model'
  type: boolean
  inputBinding:
    prefix: -mod
- id: in_reg
  doc: '[n]      Draw first or nth regularizer'
  type: boolean
  inputBinding:
    prefix: -reg
- id: in_freq
  doc: '[n]      Draw first or nth frequencies'
  type: boolean
  inputBinding:
    prefix: -freq
- id: in_model_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_psfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- drawmodel
