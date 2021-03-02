class: CommandLineTool
id: taxonomy_util_get_lineage.cwl
inputs:
- id: in_show_names
  doc: Show taxon names, not just IDs
  type: boolean?
  inputBinding:
    prefix: --show_names
- id: in_delimiter
  doc: Delimiter for lineage string
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_db
  doc: ''
  type: string?
  inputBinding:
    prefix: --db
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- taxonomy_util
- get_lineage
