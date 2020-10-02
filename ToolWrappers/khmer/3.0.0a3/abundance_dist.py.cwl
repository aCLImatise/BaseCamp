class: CommandLineTool
id: abundance_dist.py.cwl
inputs:
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: in_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: in_b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: in_info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
- id: in_calculate_abundance_distribution
  doc: Calculate abundance distribution of the k-mers in the sequence file using a
  type: string
  inputBinding:
    position: 0
- id: in_input_count_graph_filename
  doc: The name of the input k-mer countgraph file.
  type: string
  inputBinding:
    position: 0
- id: in_input_sequence_filename
  doc: The name of the input FAST[AQ] sequence file.
  type: string
  inputBinding:
    position: 1
- id: in_columns_kmer_abundance
  doc: "The columns are: (1) k-mer abundance, (2) k-mer count,\n(3) cumulative count,\
    \ (4) fraction of total distinct\nk-mers."
  type: string
  inputBinding:
    position: 2
- id: in_tests_slash_test_data_slash_test_abund_read_two_dot_fa
  doc: abundance-dist.py counts tests/test-data/test-abund-read-2.fa test-dist
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abundance-dist.py
