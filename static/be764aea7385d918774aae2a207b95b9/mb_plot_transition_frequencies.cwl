class: CommandLineTool
id: ../../../mb_plot_transition_frequencies.cwl
inputs:
- id: coverage
  doc: minimum coverage
  type: string
  inputBinding:
    prefix: --coverage
- id: limit
  doc: y-axis limit
  type: string
  inputBinding:
    prefix: --limit
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: remove
  doc: remove temporary files
  type: boolean
  inputBinding:
    prefix: --remove
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-transition-frequencies
