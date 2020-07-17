class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf_haplotypes.cwl
inputs:
- id: cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-haplotypes
