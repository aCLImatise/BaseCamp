class: CommandLineTool
id: gcov2perl.cwl
inputs:
- id: gcov_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: db
  doc: ''
  type: string
  inputBinding:
    prefix: -db
outputs: []
cwlVersion: v1.1
baseCommand:
- gcov2perl
