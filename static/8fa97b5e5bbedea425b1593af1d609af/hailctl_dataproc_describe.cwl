class: CommandLineTool
id: ../../../hailctl_dataproc_describe.cwl
inputs:
- id: file
  doc: Path to hail file (either MatrixTable or Table).
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- describe
