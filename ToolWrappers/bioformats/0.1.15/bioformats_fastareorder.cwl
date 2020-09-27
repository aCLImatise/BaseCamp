class: CommandLineTool
id: bioformats_fastareorder.cwl
inputs:
- id: in_ignore_missing
  doc: "ignore sequences in the specified order file that are\nmissing in the input\
    \ FASTA file\n"
  type: boolean
  inputBinding:
    prefix: --ignore_missing
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_fast_a
  doc: a FASTA file of sequences to reorder
  type: string
  inputBinding:
    position: 0
- id: in_order_file
  doc: a file with the sequence order
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: an output FASTA file of reordered sequences
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bioformats
- fastareorder
