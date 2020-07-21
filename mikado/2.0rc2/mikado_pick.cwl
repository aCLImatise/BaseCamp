class: CommandLineTool
id: ../../../mikado_pick.cwl
inputs:
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --fasta
outputs: []
cwlVersion: v1.1
baseCommand:
- mikado
- pick
