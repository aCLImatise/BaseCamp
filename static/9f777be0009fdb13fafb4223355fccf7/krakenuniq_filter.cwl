class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/krakenuniq_filter.cwl
inputs:
- id: db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
- id: threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- krakenuniq-filter
