class: CommandLineTool
id: taxonomy_util_to_sqlite.cwl
inputs:
- id: in_tax_prefix
  doc: String to prepend to names of nodes.dmp and names.dmp
  type: File
  inputBinding:
    prefix: --tax_prefix
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
- taxonomy_util
- to_sqlite
