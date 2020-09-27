class: CommandLineTool
id: condenseBedGraph.pl.cwl
inputs:
- id: in_log_output_log
  doc: "-log (output log2)\n"
  type: File
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- condenseBedGraph.pl
