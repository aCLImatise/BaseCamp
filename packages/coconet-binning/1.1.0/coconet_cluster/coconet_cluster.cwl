class: CommandLineTool
id: coconet_cluster.cwl
inputs:
- id: in_output
  doc: 'Path to output directory (default: output)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: 'Number of threads (default: 5)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_debug
  doc: 'Print debugging statements (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Less verbose (default: None)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_silent
  doc: 'Only error messages (default: None)'
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_continue
  doc: "Start from last checkpoint. The output directory needs\nto be the same. (default:\
    \ False)"
  type: Directory?
  inputBinding:
    prefix: --continue
- id: in_fragment_length
  doc: "Length of contig fragments in bp. Default is half the\nminimum contig length.\
    \ (default: -1)"
  type: long?
  inputBinding:
    prefix: --fragment-length
- id: in_features
  doc: "[{coverage,composition} ...]\nFeatures for binning (composition, coverage,\
    \ or both)\n(default: ['coverage', 'composition'])"
  type: string?
  inputBinding:
    prefix: --features
- id: in_max_neighbors
  doc: "Maximum number of neighbors to consider to compute the\nadjacency matrix.\
    \ (default: 250)"
  type: long?
  inputBinding:
    prefix: --max-neighbors
- id: in_vote_threshold
  doc: "When this parameter is not set, contig-contig edges\nare computed by summing\
    \ the probability between all\npairwise fragments between them.Otherwise, adopt\
    \ a\nvoting strategy and sets a hard-threshold on the\nprobabilityfrom each pairwise\
    \ comparison. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --vote-threshold
- id: in_algorithm
  doc: "Algorithm for clustering the contig-contig graph.\nNote: the number of cluster\
    \ is required if \"spectral\"\nis chosen. (default: leiden)"
  type: string?
  inputBinding:
    prefix: --algorithm
- id: in_theta
  doc: "(leiden) Minimum percent of edges between two contigs\nto form an edge between\
    \ them (default: 0.8)"
  type: double?
  inputBinding:
    prefix: --theta
- id: in_gamma_one
  doc: "(leiden) CPM optimization value for the first run of\nthe Leiden clustering\
    \ (default: 0.3)"
  type: long?
  inputBinding:
    prefix: --gamma1
- id: in_gamma_two
  doc: "(leiden) CPM optimization value for the second run of\nthe Leiden clustering\
    \ (default: 0.4)"
  type: long?
  inputBinding:
    prefix: --gamma2
- id: in_n_clusters
  doc: "(spectral clustering) Maximum number of clusters\n(default: None)"
  type: long?
  inputBinding:
    prefix: --n-clusters
- id: in_recruit_small_contigs
  doc: "Salvage short contigs (<2048) (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --recruit-small-contigs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Path to output directory (default: output)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_continue
  doc: "Start from last checkpoint. The output directory needs\nto be the same. (default:\
    \ False)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_continue)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coconet-binning:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- coconet
- cluster
