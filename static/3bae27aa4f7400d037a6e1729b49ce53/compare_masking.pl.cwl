class: CommandLineTool
id: compare_masking.pl.cwl
inputs:
- id: in_file_one_dot_fa
  doc: softmasked fasta file
  type: long
  inputBinding:
    position: 0
- id: in_file_two_dot_fa
  doc: softmasked second fasta file
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- compare_masking.pl
