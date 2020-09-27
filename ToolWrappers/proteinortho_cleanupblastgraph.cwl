class: CommandLineTool
id: proteinortho_cleanupblastgraph.cwl
inputs:
- id: in_blast_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- proteinortho_cleanupblastgraph
