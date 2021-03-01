class: CommandLineTool
id: widen_overlaps.cwl
inputs:
- id: in_depot
  doc: depot path (string)
  type: boolean?
  inputBinding:
    prefix: --depot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- widen_overlaps
