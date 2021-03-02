class: CommandLineTool
id: _mwcontam.cwl
inputs:
- id: in_tolerance
  doc: float      [50.0] Ppm tolerance (Any numeric value)
  type: boolean?
  inputBinding:
    prefix: -tolerance
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _mwcontam
