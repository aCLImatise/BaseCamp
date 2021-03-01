class: CommandLineTool
id: merge_masking.pl.cwl
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
- id: in_file_three_dot_fa
  doc: output softmasked third fasta file
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- merge_masking.pl
