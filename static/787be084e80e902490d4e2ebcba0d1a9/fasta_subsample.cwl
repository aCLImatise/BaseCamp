class: CommandLineTool
id: fasta_subsample.cwl
inputs:
- id: in_len
  doc: ''
  type: string?
  inputBinding:
    prefix: -len
- id: in_off
  doc: ''
  type: string?
  inputBinding:
    prefix: -off
- id: in_nor_and
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -norand
- id: in_seed
  doc: ''
  type: string?
  inputBinding:
    prefix: -seed
- id: in_file_dot
  doc: By default the sequences will be selected using a random number
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- fasta-subsample
