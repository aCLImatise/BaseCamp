class: CommandLineTool
id: prophex_klcp.cwl
inputs:
- id: in_length_of_kmer
  doc: length of k-mer
  type: long?
  inputBinding:
    prefix: -k
- id: in_construct_klcp_sa
  doc: construct k-LCP and SA in parallel
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_sampling_distance_sa
  doc: sampling distance for SA
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prophex
- klcp
