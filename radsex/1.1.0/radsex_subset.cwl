class: CommandLineTool
id: radsex_subset.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- radsex
- subset
