class: CommandLineTool
id: fasta_utils_split.cwl
inputs:
- id: in_verbose
  doc: "-p, --prefix TEXT     Prefix for the file name in output  [default: split]\n\
    -n, --number INTEGER  Number of chunks into which split the FASTA file\n[default:\
    \ 10]\n-z, --gzip            gzip output files\n--help                Show this\
    \ message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta-utils
- split
