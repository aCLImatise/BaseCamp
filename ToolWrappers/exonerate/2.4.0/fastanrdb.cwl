class: CommandLineTool
id: ../../../fastanrdb.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_fast_a
  doc: ''
  type: File
  inputBinding:
    prefix: --fasta
- id: in_ignorecase
  doc: ''
  type: boolean
  inputBinding:
    prefix: --ignorecase
- id: in_rev_comp
  doc: ''
  type: boolean
  inputBinding:
    prefix: --revcomp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastanrdb
