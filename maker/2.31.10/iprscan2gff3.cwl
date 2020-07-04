class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/iprscan2gff3.cwl
inputs:
- id: iprs_can_dot_raw
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_dot_all_dot_gff
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- iprscan2gff3
