class: CommandLineTool
id: bedparse_join_bedfile.cwl
inputs:
- id: in_column
  doc: ''
  type: string
  inputBinding:
    prefix: --column
- id: in_annotation
  doc: ''
  type: string
  inputBinding:
    prefix: --annotation
- id: in_bed_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_join
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
- bedparse
- join
- bedfile
