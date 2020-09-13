class: CommandLineTool
id: ../../../fasta_utils_split.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_prefix
  doc: 'Prefix for the file name in output  [default: split]'
  type: File
  inputBinding:
    prefix: --prefix
- id: in_number
  doc: "Number of chunks into which split the FASTA file\n[default: 10]"
  type: long
  inputBinding:
    prefix: --number
- id: in_gzip
  doc: gzip output files
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: 'Prefix for the file name in output  [default: split]'
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- fasta-utils
- split
