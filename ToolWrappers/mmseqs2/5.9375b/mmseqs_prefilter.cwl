class: CommandLineTool
id: mmseqs_prefilter.cwl
inputs:
- id: in_sensitivity_faster_fast
  doc: '4.000           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_kmer_size_range
  doc: '0               k-mer size in the range [6,7] (0: set automatically to optimum)'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_k_score
  doc: 2147483647      k-mer threshold for generating similar-k-mer lists
  type: boolean?
  inputBinding:
    prefix: --k-score
- id: in_alph_size
  doc: 21              alphabet size [2,21]
  type: boolean?
  inputBinding:
    prefix: --alph-size
- id: in_offset_result
  doc: 0               Offset result list
  type: boolean?
  inputBinding:
    prefix: --offset-result
- id: in_split
  doc: 0               Splits input sets into N equally distributed chunks. The default
    value sets the best split automatically. createindex can only be used with split
    1.
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_split_mode
  doc: '2               0: split target db; 1: split query db;  2: auto, depending
    on main memory'
  type: boolean?
  inputBinding:
    prefix: --split-mode
- id: in_split_memory_limit
  doc: 0               Maximum system memory in megabyte that one split may use. Defaults
    (0) to all available system memory.
  type: boolean?
  inputBinding:
    prefix: --split-memory-limit
- id: in_comp_bias_corr
  doc: 1               correct for locally biased amino acid composition [0,1]
  type: boolean?
  inputBinding:
    prefix: --comp-bias-corr
- id: in_diag_score
  doc: 1               use diagonal score for sorting the prefilter results [0,1]
  type: boolean?
  inputBinding:
    prefix: --diag-score
- id: in_exact_km_er_matching
  doc: only exact k-mer matching [0,1]
  type: long?
  inputBinding:
    prefix: --exact-kmer-matching
- id: in_mask
  doc: '1               0: w/o low complexity masking, 1: with low complexity masking'
  type: boolean?
  inputBinding:
    prefix: --mask
- id: in_min_un_gapped_score
  doc: 15              accept only matches with ungapped alignment score above this
    threshold
  type: boolean?
  inputBinding:
    prefix: --min-ungapped-score
- id: in_add_self_matches
  doc: false           artificially add entries of queries with themselves (for clustering)
  type: boolean?
  inputBinding:
    prefix: --add-self-matches
- id: in_spaced_km_er_mode
  doc: '1               0: use consecutive positions a k-mers; 1: use spaced k-mers'
  type: boolean?
  inputBinding:
    prefix: --spaced-kmer-mode
- id: in_list_matches_fraction
  doc: 0.000           list matches above this fraction of aligned (covered) residues
    (see --cov-mode)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_cov_mode
  doc: '0               0: coverage of query and target, 1: coverage of target, 2:
    coverage of query 3: target seq. length needs be at least x% of query length'
  type: boolean?
  inputBinding:
    prefix: --cov-mode
- id: in_pc_a
  doc: 1.000           pseudo count admixture strength
  type: boolean?
  inputBinding:
    prefix: --pca
- id: in_pcb
  doc: '1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)'
  type: boolean?
  inputBinding:
    prefix: --pcb
- id: in_no_preload
  doc: false           Do not preload database
  type: boolean?
  inputBinding:
    prefix: --no-preload
- id: in_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File?
  inputBinding:
    prefix: --sub-mat
- id: in_max_seq_len
  doc: 65535           Maximum sequence length [1,32768]
  type: boolean?
  inputBinding:
    prefix: --max-seq-len
- id: in_max_seqs
  doc: 300             maximum result sequences per query (this parameter affects
    the sensitivity)
  type: boolean?
  inputBinding:
    prefix: --max-seqs
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File?
  outputBinding:
    glob: $(inputs.in_sub_mat)
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- prefilter
