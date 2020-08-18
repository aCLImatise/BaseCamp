class: CommandLineTool
id: ../../../merge_masking.pl.cwl
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
- id: file_three_dot_fa
  doc: output softmasked third fasta file
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_masking.pl
