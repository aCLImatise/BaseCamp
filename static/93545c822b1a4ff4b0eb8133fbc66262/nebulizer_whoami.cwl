class: CommandLineTool
id: nebulizer_whoami.cwl
inputs:
- id: in_galaxy
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
- nebulizer
- whoami
