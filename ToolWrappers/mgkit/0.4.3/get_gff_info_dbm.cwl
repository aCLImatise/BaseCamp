class: CommandLineTool
id: get_gff_info_dbm.cwl
inputs:
- id: in_verbose
  doc: "-d, --output-dir TEXT  Directory for the database  [default: gff-dbm]\n--help\
    \                 Show this message and exit.\n"
  type: Directory
  inputBinding:
    prefix: --verbose
- id: in_gff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_verbose
  doc: "-d, --output-dir TEXT  Directory for the database  [default: gff-dbm]\n--help\
    \                 Show this message and exit.\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_verbose)
cwlVersion: v1.1
baseCommand:
- get-gff-info
- dbm
