class: CommandLineTool
id: scala.cwl
inputs:
- id: or
  doc: scala -help
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- scala
