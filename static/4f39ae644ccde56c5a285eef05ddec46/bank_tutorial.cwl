class: CommandLineTool
id: bank_tutorial.cwl
inputs:
- id: in_bank_name_slash
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bank-tutorial
