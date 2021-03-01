class: CommandLineTool
id: fermi_contrast.cwl
inputs:
- id: in_minimum_occurrence
  doc: minimum occurrence [3]
  type: long?
  inputBinding:
    prefix: -o
- id: in_number_of_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_kmer_length
  doc: k-mer length [55]
  type: long?
  inputBinding:
    prefix: -k
- id: in_idx_one_dot_fmd
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_idx_one_dot_rank
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_one_two_dot_sub
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_idx_two_dot_fmd
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_idx_two_dot_rank
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_two_one_dot_sub
  doc: ''
  type: long
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fermi
- contrast
