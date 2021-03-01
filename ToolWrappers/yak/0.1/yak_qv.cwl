class: CommandLineTool
id: yak_qv.cwl
inputs:
- id: in_min_sequence_length
  doc: min sequence length [0]
  type: long?
  inputBinding:
    prefix: -l
- id: in_min_kmer_fraction
  doc: min k-mer fraction [0.5]
  type: double?
  inputBinding:
    prefix: -f
- id: in_false_positive_rate
  doc: false positive rate [4e-05]
  type: double?
  inputBinding:
    prefix: -e
- id: in_print_qv_sequence
  doc: print QV for each sequence
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_number_of_threads
  doc: number of threads [4]
  type: long?
  inputBinding:
    prefix: -t
- id: in_batch_size
  doc: batch size [1g]
  type: long?
  inputBinding:
    prefix: -K
- id: in_km_er_dot_hash
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/yak:0.1--hed695b0_0
cwlVersion: v1.1
baseCommand:
- yak
- qv
