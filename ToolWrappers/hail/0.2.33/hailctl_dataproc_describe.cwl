class: CommandLineTool
id: hailctl_dataproc_describe.cwl
inputs:
- id: in_file
  doc: Path to hail file (either MatrixTable or Table).
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- describe
