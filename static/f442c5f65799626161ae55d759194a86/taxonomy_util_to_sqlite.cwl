class: CommandLineTool
id: ../../../taxonomy_util_to_sqlite.cwl
inputs:
- id: tax_prefix
  doc: String to prepend to names of nodes.dmp and names.dmp
  type: string
  inputBinding:
    prefix: --tax_prefix
- id: taxonomy_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- taxonomy_util
- to_sqlite
