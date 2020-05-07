class: CommandLineTool
id: pindel2vcf.cwl
inputs:
- id: d
  doc: 20101123 -v sample3chr20_D.vcf
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: 20101123 -v sample3chr20_all.vcf
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- pindel2vcf
