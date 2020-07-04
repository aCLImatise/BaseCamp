class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf2snv_alignment.pl.cwl
inputs:
- id: consolidate_vcf
  doc: ''
  type: string
  inputBinding:
    prefix: --consolidate_vcf
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2snv_alignment.pl
