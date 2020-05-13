class: CommandLineTool
id: benchmark2mates.cwl
inputs:
- id: o
  doc: prefix for the resulting .mates file. (required)
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: generate Bambus <outprefix>.conf file (optional)
  type: boolean
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- benchmark2mates
