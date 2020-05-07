class: CommandLineTool
id: conus_fold_RY3.cwl
inputs:
- id: seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- conus_fold
- RY3
