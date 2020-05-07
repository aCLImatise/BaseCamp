class: CommandLineTool
id: read_file_names.cwl
inputs:
- id: in
  doc: '(1 arg) :    bank input'
  type: boolean
  inputBinding:
    prefix: -in
outputs: []
cwlVersion: v1.1
baseCommand:
- read_file_names
