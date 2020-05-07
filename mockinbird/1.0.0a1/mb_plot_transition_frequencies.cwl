class: CommandLineTool
id: mb_plot_transition_frequencies.cwl
inputs:
- id: input_file
  doc: path to the *.pileup
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: prefix of filenames
  type: string
  inputBinding:
    position: 2
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
