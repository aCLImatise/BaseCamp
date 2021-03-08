class: CommandLineTool
id: gfa_to_fasta.py.cwl
inputs:
- id: in_gfa_two_fasta_do_tpy
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- gfa_to_fasta.py
