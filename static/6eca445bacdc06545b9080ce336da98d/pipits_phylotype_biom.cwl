class: CommandLineTool
id: pipits_phylotype_biom.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: l
  doc: ''
  type: long
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_phylotype_biom
