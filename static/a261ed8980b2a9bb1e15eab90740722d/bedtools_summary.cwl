class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedtools_summary.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- summary
