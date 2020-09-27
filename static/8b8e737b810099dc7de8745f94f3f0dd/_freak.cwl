class: CommandLineTool
id: _freak.cwl
inputs:
- id: in_letters
  doc: string     [gc] Residue letters (Any string)
  type: boolean
  inputBinding:
    prefix: -letters
- id: in_step
  doc: integer    [1] Stepping value (Any integer value)
  type: boolean
  inputBinding:
    prefix: -step
- id: in_window
  doc: integer    [30] Averaging window (Any integer value)
  type: boolean
  inputBinding:
    prefix: -window
- id: in_plot
  doc: toggle     [N] Produce graphic
  type: boolean
  inputBinding:
    prefix: -plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _freak
