class: CommandLineTool
id: dep_version.cwl
inputs:
- id: platform
  doc: ': linux/amd64'
  type: string
  inputBinding:
    position: 0
- id: features
  doc: ': ImportDuringSolve=false'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dep
- version
