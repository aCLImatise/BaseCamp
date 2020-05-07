class: CommandLineTool
id: condenseBedGraph.pl.cwl
inputs:
- id: log
  doc: (output log2)
  type: boolean
  inputBinding:
    prefix: -log
outputs: []
cwlVersion: v1.1
baseCommand:
- condenseBedGraph.pl
