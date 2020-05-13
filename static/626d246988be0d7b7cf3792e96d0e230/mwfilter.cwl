class: CommandLineTool
id: mwfilter.cwl
inputs:
- id: tolerance
  doc: float      [50.0] Ppm tolerance (Any numeric value)
  type: boolean
  inputBinding:
    prefix: -tolerance
outputs: []
cwlVersion: v1.1
baseCommand:
- mwfilter
