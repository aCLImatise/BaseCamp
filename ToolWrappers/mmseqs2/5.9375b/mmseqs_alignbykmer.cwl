class: CommandLineTool
id: mmseqs_alignbykmer.cwl
inputs:
- id: in_kmer_size_range
  doc: '4               k-mer size in the range [6,7] (0: set automatically to optimum)'
  type: boolean
  inputBinding:
    prefix: -k
- id: in_alph_size
  doc: 21              alphabet size [2,21]
  type: boolean
  inputBinding:
    prefix: --alph-size
- id: in_add_self_matches
  doc: false           artificially add entries of queries with themselves (for clustering)
  type: boolean
  inputBinding:
    prefix: --add-self-matches
- id: in_list_matches_fraction
  doc: 0.000           list matches above this fraction of aligned (covered) residues
    (see --cov-mode)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_list_matches_evalue
  doc: 0.001           list matches below this E-value [0.0, inf]
  type: boolean
  inputBinding:
    prefix: -e
- id: in_cov_mode
  doc: '0               0: coverage of query and target, 1: coverage of target, 2:
    coverage of query 3: target seq. length needs be at least x% of query length'
  type: boolean
  inputBinding:
    prefix: --cov-mode
- id: in_min_seq_id
  doc: 0.000           list matches above this sequence identity (for clustering)
    [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --min-seq-id
- id: in_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File
  inputBinding:
    prefix: --sub-mat
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File
  outputBinding:
    glob: $(inputs.in_sub_mat)
cwlVersion: v1.1
baseCommand:
- mmseqs
- alignbykmer
