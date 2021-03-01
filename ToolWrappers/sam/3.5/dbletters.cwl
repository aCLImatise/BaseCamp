class: CommandLineTool
id: dbletters.cwl
inputs:
- id: in_db
  doc: '[-db seq_filen]*     one or more sequence files'
  type: File?
  inputBinding:
    prefix: -db
- id: in_option
  doc: ''
  type: string?
  inputBinding:
    prefix: -option
- id: in_run_name
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
- dbletters
