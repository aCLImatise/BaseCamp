class: CommandLineTool
id: tigger.cwl
inputs:
- id: g
  doc: 'Write contig graphs as dot files (fullgraph.dot and Contig-*.dot) '
  type: boolean
  inputBinding:
    prefix: -g
- id: v
  doc: Verbose level
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- tigger
