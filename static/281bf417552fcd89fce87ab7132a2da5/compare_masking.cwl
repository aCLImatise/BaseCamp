class: CommandLineTool
id: ../../../compare_masking.pl.cwl
inputs:
- id: file_one_dot_fa
  doc: softmasked fasta file
  type: File
  inputBinding:
    position: 0
- id: file_two_dot_fa
  doc: softmasked second fasta file
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_masking.pl
