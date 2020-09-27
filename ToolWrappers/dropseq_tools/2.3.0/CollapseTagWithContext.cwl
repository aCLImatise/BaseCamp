class: CommandLineTool
id: CollapseTagWithContext.cwl
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
- id: in_outtagstring_output_tag
  doc: 'OUT_TAG=String                The output tag for the newly collapsed tag values  Required. '
  type: string
  inputBinding:
    position: 0
- id: in_counts_dot
  doc: For example, if your context tags were cell and gene and you were collapsing
    UMI
  type: string
  inputBinding:
    position: 0
- id: in_mutationalcollapseboolean_instead_using
  doc: MUTATIONAL_COLLAPSE=Boolean   Instead of using the default fixed edit distance,
    use a mutational collapse strategy.  For
  type: string
  inputBinding:
    position: 0
- id: in_edit_distance_dot
  doc: "Default value: false. This option can be set to 'null' to clear the"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CollapseTagWithContext
