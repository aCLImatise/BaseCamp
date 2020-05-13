class: CommandLineTool
id: wtdbgConvert.cwl
inputs:
- id: o
  doc: output prefix
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- wtdbgConvert
