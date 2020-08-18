class: CommandLineTool
id: ../../../pwd.cwl
inputs:
- id: logical
  doc: use PWD from environment, even if it contains symlinks
  type: boolean
  inputBinding:
    prefix: --logical
- id: physical
  doc: avoid all symlinks
  type: boolean
  inputBinding:
    prefix: --physical
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pwd
