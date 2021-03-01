class: CommandLineTool
id: TagBamWithReadSequenceExtended.cwl
inputs:
- id: in_default_g
  doc: (default 4g)
  type: long?
  inputBinding:
    prefix: -m
- id: in_final_command_line
  doc: final command line before executing
  type: string?
  inputBinding:
    prefix: -v
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_null_dot
  doc: TAG_QUALITY=String            The tag for the barcode quality.  The number
    of bases that are below the quality
  type: string
  inputBinding:
    position: 0
- id: in_threshold_dot
  doc: "Default value: XQ. This option can be set to 'null' to clear the default"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- TagBamWithReadSequenceExtended
