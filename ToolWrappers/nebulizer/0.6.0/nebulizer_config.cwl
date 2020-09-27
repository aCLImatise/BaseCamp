class: CommandLineTool
id: nebulizer_config.cwl
inputs:
- id: in_name
  doc: "only show configuration items that match NAME. Can include\nglob-style wild-cards."
  type: string
  inputBinding:
    prefix: --name
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
- config
