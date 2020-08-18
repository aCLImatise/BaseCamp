class: CommandLineTool
id: ../../../fc_calc_cutoff.cwl
inputs:
- id: coverage
  doc: 'Desired coverage ratio (i.e. over-sampling) (default: 20)'
  type: string
  inputBinding:
    prefix: --coverage
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_calc_cutoff
