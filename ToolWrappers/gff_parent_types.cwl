class: CommandLineTool
id: gff_parent_types.cwl
inputs:
- id: in_exclude
  doc: Feature types to exclude from consideration
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: "Increase verbosity. With '-v', show every warning.\nWith '-vv', turn warnings\
    \ into exceptions. Cannot use\nwith '-q'. (Default: show each type of warning\
    \ once)\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_in_file_dot_gff
  doc: Input GFF3 file
  type: string
  inputBinding:
    position: 0
- id: in_outfile_dot_txt
  doc: Name of output file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gff_parent_types
