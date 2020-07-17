class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/consolidate_vcfs.pl.cwl
inputs:
- id: snv_abundance_ratio
  doc: /opt/bcftools/bcftools
  type: string
  inputBinding:
    prefix: --snv-abundance-ratio
- id: vcf_split
  doc: ''
  type: string
  inputBinding:
    prefix: --vcfsplit
outputs: []
cwlVersion: v1.1
baseCommand:
- consolidate_vcfs.pl
