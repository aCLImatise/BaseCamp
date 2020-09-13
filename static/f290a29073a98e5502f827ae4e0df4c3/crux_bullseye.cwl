class: CommandLineTool
id: ../../../crux_bullseye.cwl
inputs:
- id: in_gap_tolerance_dot
  doc: = 3.
  type: long
  inputBinding:
    prefix: --gap-tolerance.
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- bullseye
