class: CommandLineTool
id: kraken_report.cwl
inputs:
- id: in_show_zeros
  doc: ''
  type: boolean
  inputBinding:
    prefix: --show-zeros
- id: in_db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kraken-report
