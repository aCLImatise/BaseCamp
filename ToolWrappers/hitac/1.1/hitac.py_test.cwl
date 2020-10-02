class: CommandLineTool
id: hitac.py_test.cwl
inputs:
- id: in_threads
  doc: ''
  type: string
  inputBinding:
    prefix: --threads
- id: in_km_er
  doc: ''
  type: string
  inputBinding:
    prefix: --kmer
- id: in_hit_a_cdot_py
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_train
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_test
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_predictions
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hitac.py
- test
