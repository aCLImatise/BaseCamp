class: CommandLineTool
id: livekraken_report.cwl
inputs:
- id: in_show_zeros
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --show-zeros
- id: in_db
  doc: ''
  type: string?
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- livekraken-report
