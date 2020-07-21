class: CommandLineTool
id: ../../../hitac.py_predictions.cwl
inputs:
- id: km_er
  doc: ''
  type: string
  inputBinding:
    prefix: --kmer
- id: threads
  doc: ''
  type: string
  inputBinding:
    prefix: --threads
- id: hit_a_cdot_py
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: train
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: test
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: predictions
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- hitac.py
- predictions
