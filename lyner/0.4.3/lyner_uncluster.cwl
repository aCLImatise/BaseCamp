class: CommandLineTool
id: lyner_uncluster.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- lyner
- uncluster
