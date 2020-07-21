class: CommandLineTool
id: ../../../pindel2vcf4tcga.cwl
inputs:
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: pin_del_two_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pindel2vcf4tcga
