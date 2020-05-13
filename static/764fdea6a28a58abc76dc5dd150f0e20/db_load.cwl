class: CommandLineTool
id: db_load.cwl
inputs:
- id: blob_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: blob_threshold
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: db_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- db_load
