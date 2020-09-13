class: CommandLineTool
id: ../../../condenseBedGraph.pl.cwl
inputs:
- id: in_s
  doc: ''
  type: File
  inputBinding:
    prefix: -s
- id: in_log
  doc: (output log2)
  type: boolean
  inputBinding:
    prefix: -log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- condenseBedGraph.pl
