class: CommandLineTool
id: import_igenome.cwl
inputs:
- id: p
  doc: ''
  type: File
  inputBinding:
    prefix: -p
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- import_igenome
