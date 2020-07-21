class: CommandLineTool
id: ../../../dbletters.cwl
inputs:
- id: db
  doc: '[-db seq_filen]*     one or more sequence files'
  type: string
  inputBinding:
    prefix: -db
- id: option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: run_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dbletters
