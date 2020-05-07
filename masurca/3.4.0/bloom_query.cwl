class: CommandLineTool
id: bloom_query.cwl
inputs:
- id: mer
  doc: '*k-mer size'
  type: long
  inputBinding:
    prefix: --mer
outputs: []
cwlVersion: v1.1
baseCommand:
- bloom_query
