class: CommandLineTool
id: bank2coverage_bankname.cwl
inputs:
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bank2coverage
- bankname
