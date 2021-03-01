class: CommandLineTool
id: runMetaphyler.pl.cwl
inputs:
- id: in_prefix_dot_classification
  doc: Classification results.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- runMetaphyler.pl
