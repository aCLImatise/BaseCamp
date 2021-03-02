class: CommandLineTool
id: quiva2DB.cwl
inputs:
- id: in_vl
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -vl
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- quiva2DB
