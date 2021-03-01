class: CommandLineTool
id: prot2codon.cwl
inputs:
- id: in_multi_fast_a_or_stockholm_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fsa:1.15.9--h8b12597_1
cwlVersion: v1.1
baseCommand:
- prot2codon
