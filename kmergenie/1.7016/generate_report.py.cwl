class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/generate_report.py.bak.cwl
inputs:
- id: name_report_file
  doc: 'name of the report file (default: [prefix]_report.html)'
  type: string
  inputBinding:
    prefix: -o
- id: diploid
  doc: use the diploid model
  type: boolean
  inputBinding:
    prefix: --diploid
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
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_report.py.bak
