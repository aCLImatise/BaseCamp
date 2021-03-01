class: CommandLineTool
id: condenseBedGraph.pl.cwl
inputs:
- id: in_log
  doc: (output log2)
  type: File?
  inputBinding:
    prefix: -log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- condenseBedGraph.pl
