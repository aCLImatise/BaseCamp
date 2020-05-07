class: CommandLineTool
id: bioformats_fastareorder.cwl
inputs:
- id: fast_a
  doc: a FASTA file of sequences to reorder
  type: string
  inputBinding:
    position: 0
- id: order_file
  doc: a file with the sequence order
  type: string
  inputBinding:
    position: 1
- id: output
  doc: an output FASTA file of reordered sequences
  type: string
  inputBinding:
    position: 2
- id: ignore_missing
  doc: ignore sequences in the specified order file that are missing in the input
    FASTA file
  type: boolean
  inputBinding:
    prefix: --ignore_missing
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- fastareorder
