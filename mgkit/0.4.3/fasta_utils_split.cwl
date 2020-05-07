class: CommandLineTool
id: fasta_utils_split.cwl
inputs:
- id: prefix
  doc: 'Prefix for the file name in output  [default: split]'
  type: string
  inputBinding:
    prefix: --prefix
- id: number
  doc: 'Number of chunks into which split the FASTA file [default: 10]'
  type: long
  inputBinding:
    prefix: --number
- id: gzip
  doc: gzip output files
  type: boolean
  inputBinding:
    prefix: --gzip
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-utils
- split
