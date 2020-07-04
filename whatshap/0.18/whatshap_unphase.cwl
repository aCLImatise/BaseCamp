class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/whatshap_unphase.cwl
inputs:
- id: vcf
  doc: VCF file. Use "-" to read from standard input
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- whatshap
- unphase
