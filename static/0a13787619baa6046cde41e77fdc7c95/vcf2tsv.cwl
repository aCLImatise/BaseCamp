class: CommandLineTool
id: ../../../vcf2tsv.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2tsv
