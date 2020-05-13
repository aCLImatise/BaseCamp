class: CommandLineTool
id: generate_report.py.bak.cwl
inputs:
- id: generate_report
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
  doc: 'name of the report file (default: [prefix]_report.html)'
  type: string
  inputBinding:
    prefix: -o
- id: diploid
  doc: use the diploid model
  type: boolean
  inputBinding:
    prefix: --diploid
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_report.py.bak
