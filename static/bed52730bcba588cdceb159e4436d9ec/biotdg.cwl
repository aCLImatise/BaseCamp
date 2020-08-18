class: CommandLineTool
id: ../../../biotdg.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: vcf
  doc: ''
  type: string
  inputBinding:
    prefix: --vcf
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- biotdg
