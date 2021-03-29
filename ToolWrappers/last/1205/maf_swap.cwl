class: CommandLineTool
id: maf_swap.cwl
inputs:
- id: in_move_nth_sequence
  doc: 'move the Nth sequence to the top (default: 2)'
  type: long?
  inputBinding:
    prefix: -n
- id: in_my_alignments_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/last:1205--h8b12597_0
cwlVersion: v1.1
baseCommand:
- maf-swap
