class: CommandLineTool
id: ../../../kraken_report.cwl
inputs:
- id: db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
- id: show_zeros
  doc: ''
  type: boolean
  inputBinding:
    prefix: --show-zeros
outputs: []
cwlVersion: v1.1
baseCommand:
- kraken-report
