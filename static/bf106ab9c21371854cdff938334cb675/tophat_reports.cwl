class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tophat_reports.cwl
inputs:
- id: junctions_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: insertions_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: deletions_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: accepted_hits_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- tophat_reports
