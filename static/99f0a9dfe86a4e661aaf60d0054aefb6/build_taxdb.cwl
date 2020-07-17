class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/build_taxdb.cwl
inputs:
- id: with
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: three
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- build_taxdb
