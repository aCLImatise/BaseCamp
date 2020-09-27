class: CommandLineTool
id: go_export_graph.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- go-export-graph.pl
