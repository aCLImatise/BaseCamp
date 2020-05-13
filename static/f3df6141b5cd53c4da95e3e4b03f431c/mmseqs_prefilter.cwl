class: CommandLineTool
id: mmseqs_prefilter.cwl
inputs:
- id: s
  doc: '4.000           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]'
  type: boolean
  inputBinding:
    prefix: -s
- id: k
  doc: '0               k-mer size in the range [6,7] (0: set automatically to optimum)'
  type: boolean
  inputBinding:
    prefix: -k
- id: k_score
  doc: '2147483647      k-mer threshold for generating similar-k-mer lists          '
  type: boolean
  inputBinding:
    prefix: --k-score
- id: alph_size
  doc: '21              alphabet size [2,21]                                        '
  type: boolean
  inputBinding:
    prefix: --alph-size
- id: offset_result
  doc: '0               Offset result list                                          '
  type: boolean
  inputBinding:
    prefix: --offset-result
- id: split
  doc: 0               Splits input sets into N equally distributed chunks. The default
    value sets the best split automatically. createindex can only be used with split
    1.
  type: boolean
  inputBinding:
    prefix: --split
- id: split_mode
  doc: '2               0: split target db; 1: split query db;  2: auto, depending
    on main memory'
  type: boolean
  inputBinding:
    prefix: --split-mode
- id: split_memory_limit
  doc: 0               Maximum system memory in megabyte that one split may use. Defaults
    (0) to all available system memory.
  type: boolean
  inputBinding:
    prefix: --split-memory-limit
- id: comp_bias_corr
  doc: '1               correct for locally biased amino acid composition [0,1]     '
  type: boolean
  inputBinding:
    prefix: --comp-bias-corr
- id: diag_score
  doc: '1               use diagonal score for sorting the prefilter results [0,1]  '
  type: boolean
  inputBinding:
    prefix: --diag-score
- id: exact_km_er_matching
  doc: '0               only exact k-mer matching [0,1]                             '
  type: boolean
  inputBinding:
    prefix: --exact-kmer-matching
- id: mask
  doc: '1               0: w/o low complexity masking, 1: with low complexity masking'
  type: boolean
  inputBinding:
    prefix: --mask
- id: min_un_gapped_score
  doc: 15              accept only matches with ungapped alignment score above this
    threshold
  type: boolean
  inputBinding:
    prefix: --min-ungapped-score
- id: add_self_matches
  doc: false           artificially add entries of queries with themselves (for clustering)
  type: boolean
  inputBinding:
    prefix: --add-self-matches
- id: spaced_km_er_mode
  doc: '1               0: use consecutive positions a k-mers; 1: use spaced k-mers '
  type: boolean
  inputBinding:
    prefix: --spaced-kmer-mode
- id: c
  doc: 0.000           list matches above this fraction of aligned (covered) residues
    (see --cov-mode)
  type: boolean
  inputBinding:
    prefix: -c
- id: cov_mode
  doc: '0               0: coverage of query and target, 1: coverage of target, 2:
    coverage of query 3: target seq. length needs be at least x% of query length'
  type: boolean
  inputBinding:
    prefix: --cov-mode
- id: pc_a
  doc: '1.000           pseudo count admixture strength                             '
  type: boolean
  inputBinding:
    prefix: --pca
- id: pcb
  doc: '1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)'
  type: boolean
  inputBinding:
    prefix: --pcb
- id: no_preload
  doc: 'false           Do not preload database                                     '
  type: boolean
  inputBinding:
    prefix: --no-preload
- id: sub_mat
  doc: 'blosum62.out    amino acid substitution matrix file                         '
  type: boolean
  inputBinding:
    prefix: --sub-mat
- id: max_seq_len
  doc: '65535           Maximum sequence length [1,32768]                           '
  type: boolean
  inputBinding:
    prefix: --max-seq-len
- id: max_seqs
  doc: 300             maximum result sequences per query (this parameter affects
    the sensitivity)
  type: boolean
  inputBinding:
    prefix: --max-seqs
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- prefilter
