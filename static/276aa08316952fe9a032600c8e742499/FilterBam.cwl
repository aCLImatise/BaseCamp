class: CommandLineTool
id: FilterBam.cwl
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
- id: in_minimummappingqualityinteger
  doc: MINIMUM_MAPPING_QUALITY=Integer
  type: string
  inputBinding:
    position: 0
- id: in_side_dot
  doc: 'Default value: null. This option may be specified 0 or more times. '
  type: string
  inputBinding:
    position: 0
- id: in_times_dot
  doc: REF_HARD_MATCHED_RETAINED=String
  type: string
  inputBinding:
    position: 0
- id: in_striprefprefixstring_edit_names
  doc: STRIP_REF_PREFIX=String       Edit contig names so that a contig that starts
    with one of these prefixes has the prefix
  type: string
  inputBinding:
    position: 0
- id: in_stripped_dot
  doc: 'Default value: null. This option may be specified 0 or more times. '
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
- FilterBam
