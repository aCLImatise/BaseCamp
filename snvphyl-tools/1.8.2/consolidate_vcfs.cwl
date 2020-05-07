class: CommandLineTool
id: consolidate_vcfs.pl.cwl
inputs:
- id: snv_abundance_ratio
  doc: 0.75 --bcftools-path /opt/bcftools/bcftools
  type: boolean
  inputBinding:
    prefix: --snv-abundance-ratio
outputs: []
cwlVersion: v1.1
baseCommand:
- consolidate_vcfs.pl
