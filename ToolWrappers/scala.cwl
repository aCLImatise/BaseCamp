class: CommandLineTool
id: scala.cwl
inputs:
- id: in_or
  doc: scala -help
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scala
