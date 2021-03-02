class: CommandLineTool
id: sga_cluster.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_out
  doc: 'write the clusters to FILE (default: clusters.txt)'
  type: File?
  inputBinding:
    prefix: --out
- id: in_min_cluster_size
  doc: 'only write clusters with at least N reads (default: 2)'
  type: long?
  inputBinding:
    prefix: --min-cluster-size
- id: in_max_cluster_size
  doc: abort the search if the cluster size exceeds N
  type: long?
  inputBinding:
    prefix: --max-cluster-size
- id: in_min_overlap
  doc: 'require an overlap of at least N bases between reads (default: 45)'
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_error_rate
  doc: 'the maximum error rate allowed to consider two sequences aligned (default:
    exact matches only)'
  type: boolean?
  inputBinding:
    prefix: --error-rate
- id: in_threads
  doc: 'use NUM worker threads to compute the overlaps (default: no threading)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_iterations
  doc: limit cluster extension to NUM iterations
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_extend
  doc: extend previously existing clusters in FILE
  type: File?
  inputBinding:
    prefix: --extend
- id: in_limit
  doc: do not extend through the sequences in FILE
  type: File?
  inputBinding:
    prefix: --limit
- id: in_reads
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
- sga
- cluster
