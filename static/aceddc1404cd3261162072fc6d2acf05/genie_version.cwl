class: CommandLineTool
id: genie_version.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- version
