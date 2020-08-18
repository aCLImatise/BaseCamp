class: CommandLineTool
id: ../../../gff_parent_types.cwl
inputs:
- id: exclude
  doc: Feature types to exclude from consideration
  type: string[]
  inputBinding:
    prefix: --exclude
- id: quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings\
    \ into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_file_dot_gff
  doc: Input GFF3 file
  type: string
  inputBinding:
    position: 0
- id: outfile_dot_txt
  doc: Name of output file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gff_parent_types
