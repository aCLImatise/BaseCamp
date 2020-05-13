class: CommandLineTool
id: vcf_indel_stats.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_txt
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-indel-stats
