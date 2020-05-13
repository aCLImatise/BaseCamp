class: CommandLineTool
id: deeplc.cwl
inputs:
- id: batch_num
  doc: Batch size (in peptides) for predicting the retention time. Set lower to decrease
    memory footprint (optional, default=250000)
  type: string
  inputBinding:
    prefix: --batch_num
- id: plot_predictions
  doc: Save scatter plot of predictions vs observations (default=False)
  type: boolean
  inputBinding:
    prefix: --plot_predictions
- id: n_threads
  doc: Number of threads to use (optional, default=maximum available)
  type: string
  inputBinding:
    prefix: --n_threads
- id: log_level
  doc: Logging level (debug, info, warning, error, or critical; default=info)
  type: string
  inputBinding:
    prefix: --log_level
outputs: []
cwlVersion: v1.1
baseCommand:
- deeplc
