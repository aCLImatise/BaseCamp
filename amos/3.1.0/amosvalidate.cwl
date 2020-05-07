class: CommandLineTool
id: amosvalidate.cwl
inputs:
- id: d
  doc: '=<n>   Use the clear range of the reads? (0:no 1:yes, default: 1)'
  type: string
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- amosvalidate
