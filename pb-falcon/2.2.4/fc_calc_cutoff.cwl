class: CommandLineTool
id: fc_calc_cutoff.cwl
inputs:
- id: genome_size
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: capture
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: coverage
  doc: ''
  type: string
  inputBinding:
    prefix: --coverage
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_calc_cutoff
