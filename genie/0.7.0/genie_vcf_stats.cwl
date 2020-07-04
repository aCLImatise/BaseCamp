class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genie_vcf_stats.cwl
inputs:
- id: file_path
  doc: a VCF file (*require)
  type: string
  inputBinding:
    prefix: --filepath
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- vcf
- stats
