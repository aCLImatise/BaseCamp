class: CommandLineTool
id: mmapConvert.cwl
inputs:
- id: o
  doc: output file
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- mmapConvert
