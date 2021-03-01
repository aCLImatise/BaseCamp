class: CommandLineTool
id: bloom_query.cwl
inputs:
- id: in_mer
  doc: '*k-mer size'
  type: long?
  inputBinding:
    prefix: --mer
- id: in_bloom_query_cmdline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
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
- bloom_query
