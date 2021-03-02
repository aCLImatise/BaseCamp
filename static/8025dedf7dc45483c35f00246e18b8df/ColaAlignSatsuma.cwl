class: CommandLineTool
id: ColaAlignSatsuma.cwl
inputs:
- id: in_string_query_sequence
  doc: '<string> : query sequence'
  type: boolean?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ColaAlignSatsuma
