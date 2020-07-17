class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pairsnp.cwl
inputs:
- id: print_version_exit
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: output_sparse_matrix
  doc: Output in sparse matrix form (i,j,distance).
  type: boolean
  inputBinding:
    prefix: -s
- id: distance_threshold_sparse
  doc: Distance threshold for sparse output. Only distances <= d will be returned.
  type: boolean
  inputBinding:
    prefix: -d
- id: will_k_neighbours
  doc: Will on return the k nearest neighbours for each sample in sparse output.
  type: boolean
  inputBinding:
    prefix: -k
- id: output_csv_tsv
  doc: Output CSV instead of TSV
  type: boolean
  inputBinding:
    prefix: -c
- id: count_comparisons_off
  doc: Count comparisons with Ns (off by default)
  type: boolean
  inputBinding:
    prefix: -n
- id: number_use_default
  doc: Number of threads to use (default=1)
  type: boolean
  inputBinding:
    prefix: -t
- id: blank_top_left
  doc: Blank top left corner cell instead of 'pairsnp 0.2.0'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- pairsnp
