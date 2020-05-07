class: CommandLineTool
id: msspercolator_splittd.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- msspercolator
- splittd
