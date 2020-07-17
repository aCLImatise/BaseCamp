class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prophex_klcp.cwl
inputs:
- id: length_of_kmer
  doc: length of k-mer
  type: long
  inputBinding:
    prefix: -k
- id: construct_klcp_sa
  doc: construct k-LCP and SA in parallel
  type: boolean
  inputBinding:
    prefix: -s
- id: sampling_distance_sa
  doc: sampling distance for SA
  type: boolean
  inputBinding:
    prefix: -i
- id: idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- prophex
- klcp
