class: CommandLineTool
id: ../../../fermi_contrast.cwl
inputs:
- id: minimum_occurrence
  doc: minimum occurrence [3]
  type: long
  inputBinding:
    prefix: -o
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: kmer_length
  doc: k-mer length [55]
  type: long
  inputBinding:
    prefix: -k
- id: idx_one_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: idx_one_dot_rank
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: one_two_dot_sub
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: idx_two_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: idx_two_dot_rank
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: two_one_dot_sub
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- contrast
