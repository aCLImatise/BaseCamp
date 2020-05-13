class: CommandLineTool
id: phd2afg.cwl
inputs:
- id: d
  doc: directory where phd files are located
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: name of the output file
  type: File
  inputBinding:
    prefix: -o
- id: c
  doc: 'optional: file containing clipping coordinates'
  type: File
  inputBinding:
    prefix: -c
- id: m
  doc: 'optional: file containing mate-pair info in Bambus .mates format'
  type: File
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- phd2afg
