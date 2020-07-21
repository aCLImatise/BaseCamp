class: CommandLineTool
id: ../../../bloom_query.cwl
inputs:
- id: mer
  doc: '*k-mer size'
  type: long
  inputBinding:
    prefix: --mer
- id: bloom_query_cmdline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bloom_query
