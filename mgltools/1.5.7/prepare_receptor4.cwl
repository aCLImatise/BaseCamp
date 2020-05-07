class: CommandLineTool
id: prepare_receptor4.py.cwl
inputs:
- id: r
  doc: 'receptor_filename '
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- prepare_receptor4.py
