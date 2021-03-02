class: CommandLineTool
id: etraining.cwl
inputs:
- id: in_species
  doc: ''
  type: string?
  inputBinding:
    prefix: --species
- id: in_train_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- etraining
