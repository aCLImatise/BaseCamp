class: CommandLineTool
id: hca_auth_provider..cwl
inputs:
- id: in_hca
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_auth
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
- hca
- auth
- provider.
