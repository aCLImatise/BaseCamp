class: CommandLineTool
id: add_gff_info_coverage.cwl
inputs:
- id: in_verbose
  doc: "-a, --sample-alignment TEXT  sample name and correspondent alignment file\n\
    separated by comma  [required]\n--help                       Show this message\
    \ and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add-gff-info
- coverage
