class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_normalize.cwl
inputs:
- id: mut_snp_ratio
  doc: remove positions with SNP-ratio > r
  type: string
  inputBinding:
    prefix: --mut_snp_ratio
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-normalize
