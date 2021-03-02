class: CommandLineTool
id: generate_report.py.cwl
inputs:
- id: in_name_report_file
  doc: 'name of the report file (default: [prefix]_report.html)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_diploid
  doc: use the diploid model
  type: boolean?
  inputBinding:
    prefix: --diploid
- id: in_generate_report
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- generate_report.py
