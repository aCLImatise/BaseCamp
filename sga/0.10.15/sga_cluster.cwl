class: CommandLineTool
id: sga_cluster.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: out
  doc: 'write the clusters to FILE (default: clusters.txt)'
  type: File
  inputBinding:
    prefix: --out
- id: min_cluster_size
  doc: 'only write clusters with at least N reads (default: 2)'
  type: string
  inputBinding:
    prefix: --min-cluster-size
- id: max_cluster_size
  doc: abort the search if the cluster size exceeds N
  type: string
  inputBinding:
    prefix: --max-cluster-size
- id: min_overlap
  doc: 'require an overlap of at least N bases between reads (default: 45)'
  type: string
  inputBinding:
    prefix: --min-overlap
- id: error_rate
  doc: 'the maximum error rate allowed to consider two sequences aligned (default:
    exact matches only)'
  type: boolean
  inputBinding:
    prefix: --error-rate
- id: threads
  doc: 'use NUM worker threads to compute the overlaps (default: no threading)'
  type: string
  inputBinding:
    prefix: --threads
- id: iterations
  doc: limit cluster extension to NUM iterations
  type: string
  inputBinding:
    prefix: --iterations
- id: extend
  doc: extend previously existing clusters in FILE
  type: File
  inputBinding:
    prefix: --extend
- id: limit
  doc: do not extend through the sequences in FILE
  type: File
  inputBinding:
    prefix: --limit
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- cluster
