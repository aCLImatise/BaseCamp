class: CommandLineTool
id: bcftools.cwl
inputs:
- id: vcf
  doc: /BCF manipulation
  type: boolean
  inputBinding:
    prefix: -- VCF
- id: vcf
  doc: /BCF analysis
  type: boolean
  inputBinding:
    prefix: -- VCF
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
