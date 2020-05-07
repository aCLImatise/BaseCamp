class: CommandLineTool
id: mkmapfile.cwl
inputs:
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -M
- id: u
  doc: ''
  type: string
  inputBinding:
    prefix: -U
outputs: []
cwlVersion: v1.1
baseCommand:
- mkmapfile
