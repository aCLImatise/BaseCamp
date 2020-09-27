class: CommandLineTool
id: bank2coverage.cwl
inputs:
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bank2coverage
