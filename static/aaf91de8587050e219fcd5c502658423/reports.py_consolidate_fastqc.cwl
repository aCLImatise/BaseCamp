class: CommandLineTool
id: reports.py_consolidate_fastqc.cwl
inputs:
- id: in_reports_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_consolidate_fast_qc
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reports.py
- consolidate_fastqc
