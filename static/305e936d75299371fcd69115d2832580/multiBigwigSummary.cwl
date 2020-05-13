class: CommandLineTool
id: multiBigwigSummary.cwl
inputs:
- id: b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- multiBigwigSummary
