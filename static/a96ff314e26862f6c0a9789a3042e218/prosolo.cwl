class: CommandLineTool
id: prosolo.cwl
inputs:
- id: v
  doc: Provide verbose output.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- prosolo
