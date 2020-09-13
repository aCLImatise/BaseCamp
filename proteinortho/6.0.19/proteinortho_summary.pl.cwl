class: CommandLineTool
id: ../../../proteinortho_summary.pl.cwl
inputs:
- id: in_graph
  doc: 'Path to the *.proteinortho-graph or *.blast-graph file generated by proteinortho. '
  type: string
  inputBinding:
    position: 0
- id: in_graph_two
  doc: (optional) If you provide a blast-graph AND a proteinortho-graph, the difference
    is calculated (GRAPH - GRAPH2)
  type: long
  inputBinding:
    position: 1
- id: in_options
  doc: -format,-f      enables the table formatting instead of the plain csv output.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- proteinortho_summary.pl
