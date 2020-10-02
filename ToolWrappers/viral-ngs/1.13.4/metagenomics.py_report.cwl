class: CommandLineTool
id: metagenomics.py_report.cwl
inputs:
- id: in_meta_genomics_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- metagenomics.py
- report
