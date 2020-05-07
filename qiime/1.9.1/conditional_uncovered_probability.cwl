class: CommandLineTool
id: conditional_uncovered_probability.py.cwl
inputs:
- id: verbose
  doc: 'Print information during execution -- useful for debugging [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input_path
  doc: 'Input OTU table filepath. [default: none]'
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: 'Output filepath to store the predictions. [default: none]'
  type: string
  inputBinding:
    prefix: --output_path
- id: look_ahead
  doc: 'Number of unobserved, new colors necessary for prediction. [default: 25]'
  type: string
  inputBinding:
    prefix: --look_ahead
- id: metrics
  doc: 'CUP metric(s) to use. A comma-separated list should be provided when multiple
    metrics are specified. [default: lladser_pe,lladser_ci]'
  type: string
  inputBinding:
    prefix: --metrics
- id: show_metrics
  doc: Show the available CUP metrics and exit.
  type: boolean
  inputBinding:
    prefix: --show_metrics
outputs: []
cwlVersion: v1.1
baseCommand:
- conditional_uncovered_probability.py
