class: CommandLineTool
id: ../../../fastaclean.cwl
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
- id: in_protein
  doc: ''
  type: boolean
  inputBinding:
    prefix: --protein
- id: in_acgt_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: --acgtn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastaclean
