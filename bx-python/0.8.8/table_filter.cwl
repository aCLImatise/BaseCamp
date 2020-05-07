class: CommandLineTool
id: table_filter.py.cwl
inputs:
- id: header
  doc: keep header in output
  type: boolean
  inputBinding:
    prefix: --header
- id: comments
  doc: keep comments in output
  type: boolean
  inputBinding:
    prefix: --comments
- id: force_header
  doc: assume the first line is a header even if it does not start with "#"
  type: boolean
  inputBinding:
    prefix: --force-header
- id: cols
  doc: names or indexes of columns to keep
  type: string
  inputBinding:
    prefix: --cols
outputs: []
cwlVersion: v1.1
baseCommand:
- table_filter.py
