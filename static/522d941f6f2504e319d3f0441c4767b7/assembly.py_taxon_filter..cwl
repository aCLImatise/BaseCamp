class: CommandLineTool
id: assembly.py_taxon_filter..cwl
inputs:
- id: in_assembly_do_tpy
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
- assembly.py
- taxon_filter.
