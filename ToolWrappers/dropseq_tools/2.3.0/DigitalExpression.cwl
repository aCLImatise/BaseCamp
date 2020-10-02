class: CommandLineTool
id: DigitalExpression.cwl
inputs:
- id: in_default_g
  doc: (default 4g)
  type: long
  inputBinding:
    prefix: -m
- id: in_final_command_line
  doc: final command line before executing
  type: string
  inputBinding:
    prefix: -v
- id: in_displays_options_specific
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean
  inputBinding:
    prefix: -H
- id: in_um_is_dot
  doc: 'Cell/Gene pairings with 0 UMIs are not emitted.  Default value: null. '
  type: string
  inputBinding:
    position: 0
- id: in_cells
  doc: 'Default value: null. '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DigitalExpression
