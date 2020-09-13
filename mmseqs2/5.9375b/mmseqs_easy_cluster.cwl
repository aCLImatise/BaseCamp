class: CommandLineTool
id: ../../../mmseqs_easy_cluster.cwl
inputs:
- id: in_sensitivity_will_automatically
  doc: 4.000           sensitivity will be automatically determined but can be adjusted
  type: boolean
  inputBinding:
    prefix: -s
- id: in_kmer_size_range
  doc: '0               k-mer size in the range [6,7] (0: set automatically to optimum)'
  type: boolean
  inputBinding:
    prefix: -k
- id: in_k_score
  doc: 2147483647      k-mer threshold for generating similar-k-mer lists
  type: boolean
  inputBinding:
    prefix: --k-score
- id: in_alph_size
  doc: 21              alphabet size [2,21]
  type: boolean
  inputBinding:
    prefix: --alph-size
- id: in_offset_result
  doc: 0               Offset result list
  type: boolean
  inputBinding:
    prefix: --offset-result
- id: in_split
  doc: 0               Splits input sets into N equally distributed chunks. The default
    value sets the best split automatically. createindex can only be used with split
    1.
  type: boolean
  inputBinding:
    prefix: --split
- id: in_split_mode
  doc: '2               0: split target db; 1: split query db;  2: auto, depending
    on main memory'
  type: boolean
  inputBinding:
    prefix: --split-mode
- id: in_split_memory_limit
  doc: 0               Maximum system memory in megabyte that one split may use. Defaults
    (0) to all available system memory.
  type: boolean
  inputBinding:
    prefix: --split-memory-limit
- id: in_comp_bias_corr
  doc: 1               correct for locally biased amino acid composition [0,1]
  type: boolean
  inputBinding:
    prefix: --comp-bias-corr
- id: in_diag_score
  doc: 1               use diagonal score for sorting the prefilter results [0,1]
  type: boolean
  inputBinding:
    prefix: --diag-score
- id: in_exact_km_er_matching
  doc: 0               only exact k-mer matching [0,1]
  type: boolean
  inputBinding:
    prefix: --exact-kmer-matching
- id: in_mask
  doc: '1               0: w/o low complexity masking, 1: with low complexity masking'
  type: boolean
  inputBinding:
    prefix: --mask
- id: in_min_un_gapped_score
  doc: 15              accept only matches with ungapped alignment score above this
    threshold
  type: boolean
  inputBinding:
    prefix: --min-ungapped-score
- id: in_add_self_matches
  doc: false           artificially add entries of queries with themselves (for clustering)
  type: boolean
  inputBinding:
    prefix: --add-self-matches
- id: in_spaced_km_er_mode
  doc: '1               0: use consecutive positions a k-mers; 1: use spaced k-mers'
  type: boolean
  inputBinding:
    prefix: --spaced-kmer-mode
- id: in_list_matches_fraction
  doc: 0.800           list matches above this fraction of aligned (covered) residues
    (see --cov-mode)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_cov_mode
  doc: '0               0: coverage of query and target, 1: coverage of target, 2:
    coverage of query 3: target seq. length needs be at least x% of query length'
  type: boolean
  inputBinding:
    prefix: --cov-mode
- id: in_false_add_convert
  doc: false           add backtrace string (convert to alignments with mmseqs convertalis
    utility)
  type: boolean
  inputBinding:
    prefix: -a
- id: in_alignment_mode
  doc: '3               How to compute the alignment: 0: automatic; 1: only score
    and end_pos; 2: also start_pos and cov; 3: also seq.id; 4: only ungapped alignment'
  type: boolean
  inputBinding:
    prefix: --alignment-mode
- id: in_list_matches_evalue
  doc: 0.001           list matches below this E-value [0.0, inf]
  type: boolean
  inputBinding:
    prefix: -e
- id: in_min_seq_id
  doc: 0.000           list matches above this sequence identity (for clustering)
    [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --min-seq-id
- id: in_seq_id_mode
  doc: '0               0: alignment length 1: shorter, 2: longer sequence'
  type: boolean
  inputBinding:
    prefix: --seq-id-mode
- id: in_alt_ali
  doc: 0               Show up to this many alternative alignments
  type: boolean
  inputBinding:
    prefix: --alt-ali
- id: in_realign
  doc: false           compute more conservative, shorter alignments (scores and E-values
    not changed)
  type: boolean
  inputBinding:
    prefix: --realign
- id: in_max_rejected
  doc: 2147483647      maximum rejected alignments before alignment calculation for
    a query is aborted
  type: boolean
  inputBinding:
    prefix: --max-rejected
- id: in_max_accept
  doc: 2147483647      maximum accepted alignments before alignment calculation for
    a query is stopped
  type: boolean
  inputBinding:
    prefix: --max-accept
- id: in_score_bias
  doc: 0.000           Score bias when computing the SW alignment (in bits)
  type: boolean
  inputBinding:
    prefix: --score-bias
- id: in_cluster_mode
  doc: '0               0: Setcover, 1: connected component, 2: Greedy clustering
    by sequence length  3: Greedy clustering by sequence length (low mem)'
  type: boolean
  inputBinding:
    prefix: --cluster-mode
- id: in_max_iterations
  doc: 1000            maximum depth of breadth first search in connected component
  type: boolean
  inputBinding:
    prefix: --max-iterations
- id: in_similarity_type
  doc: 2               type of score used for clustering [1:2]. 1=alignment score.
    2=sequence identity
  type: boolean
  inputBinding:
    prefix: --similarity-type
- id: in_single_step_clustering
  doc: true            switches from cascaded to simple clustering workflow
  type: boolean
  inputBinding:
    prefix: --single-step-clustering
- id: in_cluster_steps
  doc: 3               cascaded clustering steps from 1 to -s
  type: boolean
  inputBinding:
    prefix: --cluster-steps
- id: in_km_er_per_seq
  doc: 21              kmer per sequence
  type: boolean
  inputBinding:
    prefix: --kmer-per-seq
- id: in_hash_shift
  doc: 5               Shift k-mer hash
  type: boolean
  inputBinding:
    prefix: --hash-shift
- id: in_include_only_extendable
  doc: false           Include only extendable
  type: boolean
  inputBinding:
    prefix: --include-only-extendable
- id: in_skip_n_repeat_km_er
  doc: 0               Skip sequence with >= n exact repeating k-mers
  type: boolean
  inputBinding:
    prefix: --skip-n-repeat-kmer
- id: in_pc_a
  doc: 1.000           pseudo count admixture strength
  type: boolean
  inputBinding:
    prefix: --pca
- id: in_pcb
  doc: '1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)'
  type: boolean
  inputBinding:
    prefix: --pcb
- id: in_no_preload
  doc: false           Do not preload database
  type: boolean
  inputBinding:
    prefix: --no-preload
- id: in_re_score_mode
  doc: '0               Rescore diagonal with: 0: Hamming distance, 1: local alignment
    (score only) or 2: local alignment'
  type: boolean
  inputBinding:
    prefix: --rescore-mode
- id: in_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File
  inputBinding:
    prefix: --sub-mat
- id: in_max_seq_len
  doc: 65535           Maximum sequence length [1,32768]
  type: boolean
  inputBinding:
    prefix: --max-seq-len
- id: in_max_seqs
  doc: 20              maximum result sequences per query (this parameter affects
    the sensitivity)
  type: boolean
  inputBinding:
    prefix: --max-seqs
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
- easy-cluster
