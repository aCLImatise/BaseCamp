class: CommandLineTool
id: prosic.cwl
inputs:
- id: v
  doc: Provide verbose output.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- prosic
