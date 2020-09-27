class: CommandLineTool
id: drawmodel.cwl
inputs:
- id: in_landscape
  doc: "-mod  [n]      Draw first or nth model\n-reg  [n]      Draw first or nth regularizer\n\
    -freq [n]      Draw first or nth frequencies\n"
  type: boolean
  inputBinding:
    prefix: -landscape
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
