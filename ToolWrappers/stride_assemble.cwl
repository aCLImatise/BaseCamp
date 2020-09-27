class: CommandLineTool
id: stride_assemble.cwl
inputs:
- id: in_read_length
  doc: original read length
  type: long
  inputBinding:
    prefix: --read-length
- id: in__insertsize_insert
  doc: ',  --insert-size               insert size of the paired-end library'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_prefix
  doc: prefix of FM-index of paired-end reads (bwt, rbwt, sai, rsai)
  type: string
  inputBinding:
    prefix: --prefix
- id: in_km_er_size
  doc: 'The length of the kmer to use. (default: 31)'
  type: long
  inputBinding:
    prefix: --kmer-size
- id: in_km_er_threshold
  doc: 'filter average kmer frequency vertex less than N (default: 3)'
  type: long
  inputBinding:
    prefix: --kmer-threshold
- id: in_max_chimera
  doc: 'maximum chimera length (default: read length(R)*2 )'
  type: long
  inputBinding:
    prefix: --max-chimera
- id: in_credible_overlap
  doc: 'credible overlap length (default: 80)'
  type: long
  inputBinding:
    prefix: --credible-overlap
- id: in_min_branch_length
  doc: 'remove terminal branches only if they are less than LEN bases in length (default:
    200)'
  type: long
  inputBinding:
    prefix: --min-branch-length
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_out_prefix
  doc: use NAME as the prefix of the output files (output files will be NAME-contigs.fa,
    etc)
  type: string
  inputBinding:
    prefix: --out-prefix
- id: in_min_overlap
  doc: only use overlaps of at least LEN. This can be used to filter
  type: long
  inputBinding:
    prefix: --min-overlap
- id: in_transitive_reduction
  doc: remove transitive edges from the graph. Off by default.
  type: boolean
  inputBinding:
    prefix: --transitive-reduction
- id: in_max_edges
  doc: limit each vertex to a maximum of N edges. For highly repetitive regions
  type: long
  inputBinding:
    prefix: --max-edges
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stride
- assemble
