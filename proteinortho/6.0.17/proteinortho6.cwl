class: CommandLineTool
id: ../../../proteinortho6.pl.cwl
inputs:
- id: step
  doc: to finalize
  type: string
  inputBinding:
    prefix: -step
- id: fast_a_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- proteinortho6.pl
