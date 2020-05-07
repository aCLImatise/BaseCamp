class: CommandLineTool
id: ma.cwl
inputs:
- id: c
  doc: format 6 output -> don't pipe this output to file!
  type: string
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- ma
