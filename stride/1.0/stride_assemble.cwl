class: CommandLineTool
id: stride_assemble.cwl
inputs:
- id: read_length
  doc: original read length
  type: string
  inputBinding:
    prefix: --read-length
- id: i
  doc: ',  --insert-size               insert size of the paired-end library'
  type: boolean
  inputBinding:
    prefix: -i
- id: prefix
  doc: prefix of FM-index of paired-end reads (bwt, rbwt, sai, rsai)
  type: string
  inputBinding:
    prefix: --prefix
- id: km_er_size
  doc: 'The length of the kmer to use. (default: 31)'
  type: string
  inputBinding:
    prefix: --kmer-size
- id: km_er_threshold
  doc: 'filter average kmer frequency vertex less than N (default: 3)'
  type: string
  inputBinding:
    prefix: --kmer-threshold
- id: max_chimera
  doc: 'maximum chimera length (default: read length(R)*2 )'
  type: string
  inputBinding:
    prefix: --max-chimera
- id: credible_overlap
  doc: 'credible overlap length (default: 80) '
  type: string
  inputBinding:
    prefix: --credible-overlap
- id: min_branch_length
  doc: 'remove terminal branches only if they are less than LEN bases in length (default:
    200)'
  type: string
  inputBinding:
    prefix: --min-branch-length
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: out_prefix
  doc: use NAME as the prefix of the output files (output files will be NAME-contigs.fa,
    etc)
  type: string
  inputBinding:
    prefix: --out-prefix
- id: min_overlap
  doc: only use overlaps of at least LEN. This can be used to filter
  type: string
  inputBinding:
    prefix: --min-overlap
- id: transitive_reduction
  doc: remove transitive edges from the graph. Off by default.
  type: boolean
  inputBinding:
    prefix: --transitive-reduction
- id: max_edges
  doc: limit each vertex to a maximum of N edges. For highly repetitive regions
  type: string
  inputBinding:
    prefix: --max-edges
outputs: []
cwlVersion: v1.1
baseCommand:
- stride
- assemble
