class: CommandLineTool
id: genie_vcf_stats.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_path
  doc: a VCF file (*require)
  type: string
  inputBinding:
    prefix: --filepath
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- vcf
- stats
