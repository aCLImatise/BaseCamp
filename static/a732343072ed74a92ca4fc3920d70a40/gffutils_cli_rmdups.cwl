class: CommandLineTool
id: gffutils_cli_rmdups.cwl
inputs:
- id: in_place
  doc: ''
  type: boolean
  inputBinding:
    prefix: --in-place
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- rmdups
