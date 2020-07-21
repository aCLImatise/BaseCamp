class: CommandLineTool
id: ../../../fc_calc_cutoff_genome_size.cwl
inputs:
- id: coverage
  doc: ''
  type: string
  inputBinding:
    prefix: --coverage
- id: capture
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_calc_cutoff
- genome_size
