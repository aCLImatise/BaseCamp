class: CommandLineTool
id: ../../../clustalw2fasta.cwl
inputs:
- id: in_no_gap
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nogap
- id: in_consensus
  doc: ''
  type: string
  inputBinding:
    prefix: -consensus
- id: in_seq_order
  doc: ''
  type: File
  inputBinding:
    prefix: -seqorder
- id: in_alignment_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- clustalw2fasta
