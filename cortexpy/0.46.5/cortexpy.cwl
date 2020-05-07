class: CommandLineTool
id: cortexpy.cwl
inputs:
- id: args
  doc: sub-command arguments
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cortexpy
