class: CommandLineTool
id: ../../../vcf_indel_stats.cwl
inputs:
- id: in_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-indel-stats
