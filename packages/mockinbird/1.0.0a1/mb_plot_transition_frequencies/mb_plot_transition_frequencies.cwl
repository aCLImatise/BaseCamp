class: CommandLineTool
id: ../../../mb_plot_transition_frequencies.cwl
inputs:
- id: in_coverage
  doc: minimum coverage
  type: string
  inputBinding:
    prefix: --coverage
- id: in_limit
  doc: y-axis limit
  type: string
  inputBinding:
    prefix: --limit
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_remove
  doc: remove temporary files
  type: boolean
  inputBinding:
    prefix: --remove
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-plot-transition-frequencies
