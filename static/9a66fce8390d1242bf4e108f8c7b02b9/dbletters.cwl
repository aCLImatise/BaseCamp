class: CommandLineTool
id: dbletters.cwl
inputs:
- id: db
  doc: '[-db seq_filen]*     one or more sequence files'
  type: string
  inputBinding:
    prefix: -db
outputs: []
cwlVersion: v1.1
baseCommand:
- dbletters
