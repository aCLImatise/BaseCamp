class: CommandLineTool
id: TagReadWithGeneExonFunction.cwl
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
- id: in_value_dot
  doc: 'FUNCTION_TAG=String           The functional annotation for the read  Default
    value: XF. This option can be set to'
  type: string
  inputBinding:
    position: 0
- id: in_required_dot
  doc: USE_STRAND_INFO=Boolean       Use strand info to determine what gene to assign
    the read to.  If this is on, reads can be
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- TagReadWithGeneExonFunction
