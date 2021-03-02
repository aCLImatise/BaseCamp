class: CommandLineTool
id: slice_fasta_gff.cwl
inputs:
- id: in_type
  doc: only look at features of particular type
  type: string?
  inputBinding:
    prefix: --type
- id: in_slice_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_gff_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fsa:1.15.9--h8b12597_1
cwlVersion: v1.1
baseCommand:
- slice_fasta_gff
