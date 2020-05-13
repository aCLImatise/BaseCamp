class: CommandLineTool
id: hitac.py_train.cwl
inputs:
- id: train
  doc: Input FASTA file containing the sequences for training
  type: string
  inputBinding:
    position: 0
- id: test
  doc: Input FASTA file containing the sequences for taxonomy prediction
  type: string
  inputBinding:
    position: 1
- id: predictions
  doc: Output file to write the predictions
  type: string
  inputBinding:
    position: 2
- id: km_er
  doc: 'Kmer size for feature extraction [default: 6]'
  type: string
  inputBinding:
    prefix: --kmer
- id: threads
  doc: 'Number of threads [default: all threads available]'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- hitac.py
- train
