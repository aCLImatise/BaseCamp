class: CommandLineTool
id: fasta_utils_uid.cwl
inputs:
- id: in_verbose
  doc: "-t, --table FILENAME  Filename of a table to record the changes (by default\n\
    discards it)\n--help                Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_fast_a_file
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
- fasta-utils
- uid
