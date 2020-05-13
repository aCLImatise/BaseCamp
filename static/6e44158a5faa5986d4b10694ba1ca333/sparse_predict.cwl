class: CommandLineTool
id: sparse_predict.cwl
inputs:
- id: n_thread
  doc: 'Number of threads to use. Default: 20 '
  type: string
  inputBinding:
    prefix: --n_thread
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- predict
