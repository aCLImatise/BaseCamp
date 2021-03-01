class: CommandLineTool
id: abundance_dist.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_no_zero
  doc: 'Do not output zero-count bins (default: True)'
  type: boolean?
  inputBinding:
    prefix: --no-zero
- id: in_squash
  doc: "Overwrite existing output_histogram_filename (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --squash
- id: in_no_big_count
  doc: 'Do not count k-mers past 255 (default: True)'
  type: boolean?
  inputBinding:
    prefix: --no-bigcount
- id: in_force
  doc: "Continue even if specified input files do not exist or\nare empty. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -q
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- abundance-dist.py
