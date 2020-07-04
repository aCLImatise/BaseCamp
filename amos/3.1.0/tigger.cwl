class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tigger.cwl
inputs:
- id: write_contig_graphs
  doc: 'Write contig graphs as dot files (fullgraph.dot and Contig-*.dot) '
  type: boolean
  inputBinding:
    prefix: -g
- id: verbose_level
  doc: Verbose level
  type: string
  inputBinding:
    prefix: -v
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- tigger
