class: CommandLineTool
id: MindTheGap.cwl
inputs:
- id: version
  doc: ':    display current version'
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- MindTheGap
