class: CommandLineTool
id: _hmoment.cwl
inputs:
- id: in_window
  doc: integer    [10] Window (Any integer value)
  type: boolean
  inputBinding:
    prefix: -window
- id: in_a_angle
  doc: "integer    [100] Alpha helix angle (degrees) (Any\ninteger value)"
  type: boolean
  inputBinding:
    prefix: -aangle
- id: in_bangle
  doc: "integer    [160] Beta sheet angle (degrees) (Any\ninteger value)"
  type: boolean
  inputBinding:
    prefix: -bangle
- id: in_baseline
  doc: float      [0.35] Graph marker line (Any numeric value)
  type: boolean
  inputBinding:
    prefix: -baseline
- id: in_plot
  doc: toggle     [N] Produce graphic
  type: boolean
  inputBinding:
    prefix: -plot
- id: in_double
  doc: boolean    [N] Plot two graphs
  type: boolean
  inputBinding:
    prefix: -double
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _hmoment
