class: CommandLineTool
id: taxon_filter.py_file.cwl
inputs:
- id: in_tax_on_filter_do_tpy
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
hints: []
cwlVersion: v1.1
baseCommand:
- taxon_filter.py
- file
