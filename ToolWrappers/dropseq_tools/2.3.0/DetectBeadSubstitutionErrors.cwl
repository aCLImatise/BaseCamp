class: CommandLineTool
id: DetectBeadSubstitutionErrors.cwl
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
- id: in_null_dot
  doc: OUTPUT_SUMMARY=File           Output the number of substitutions found at each
    base, from intended sequence to neighbor
  type: string
  inputBinding:
    position: 0
- id: in_sequence_dot
  doc: 'Default value: null. '
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DetectBeadSubstitutionErrors
