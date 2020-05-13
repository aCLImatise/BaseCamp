class: CommandLineTool
id: mmseqs_linclust.cwl
inputs:
- id: comp_bias_corr
  doc: '1               correct for locally biased amino acid composition [0,1]     '
  type: boolean
  inputBinding:
    prefix: --comp-bias-corr
- id: add_self_matches
  doc: false           artificially add entries of queries with themselves (for clustering)
  type: boolean
  inputBinding:
    prefix: --add-self-matches
- id: alph_size
  doc: '21              alphabet size [2,21]                                        '
  type: boolean
  inputBinding:
    prefix: --alph-size
- id: mask
  doc: '0               0: w/o low complexity masking, 1: with low complexity masking'
  type: boolean
  inputBinding:
    prefix: --mask
- id: k
  doc: '0               k-mer size in the range [6,7] (0: set automatically to optimum)'
  type: boolean
  inputBinding:
    prefix: -k
- id: split_memory_limit
  doc: 0               Maximum system memory in megabyte that one split may use. Defaults
    (0) to all available system memory.
  type: boolean
  inputBinding:
    prefix: --split-memory-limit
- id: a
  doc: false           add backtrace string (convert to alignments with mmseqs convertalis
    utility)
  type: boolean
  inputBinding:
    prefix: -a
- id: alignment_mode
  doc: '2               How to compute the alignment: 0: automatic; 1: only score
    and end_pos; 2: also start_pos and cov; 3: also seq.id; 4: only ungapped alignment'
  type: boolean
  inputBinding:
    prefix: --alignment-mode
- id: e
  doc: '0.001           list matches below this E-value [0.0, inf]                  '
  type: boolean
  inputBinding:
    prefix: -e
- id: min_seq_id
  doc: 0.900           list matches above this sequence identity (for clustering)
    [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --min-seq-id
- id: seq_id_mode
  doc: '0               0: alignment length 1: shorter, 2: longer sequence          '
  type: boolean
  inputBinding:
    prefix: --seq-id-mode
- id: alt_ali
  doc: '0               Show up to this many alternative alignments                 '
  type: boolean
  inputBinding:
    prefix: --alt-ali
- id: c
  doc: 0.800           list matches above this fraction of aligned (covered) residues
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
- id: realign
  doc: false           compute more conservative, shorter alignments (scores and E-values
    not changed)
  type: boolean
  inputBinding:
    prefix: --realign
- id: max_rejected
  doc: 2147483647      maximum rejected alignments before alignment calculation for
    a query is aborted
  type: boolean
  inputBinding:
    prefix: --max-rejected
- id: max_accept
  doc: 2147483647      maximum accepted alignments before alignment calculation for
    a query is stopped
  type: boolean
  inputBinding:
    prefix: --max-accept
- id: score_bias
  doc: '0.000           Score bias when computing the SW alignment (in bits)        '
  type: boolean
  inputBinding:
    prefix: --score-bias
- id: cluster_mode
  doc: '0               0: Setcover, 1: connected component, 2: Greedy clustering
    by sequence length  3: Greedy clustering by sequence length (low mem)'
  type: boolean
  inputBinding:
    prefix: --cluster-mode
- id: max_iterations
  doc: 1000            maximum depth of breadth first search in connected component
  type: boolean
  inputBinding:
    prefix: --max-iterations
- id: similarity_type
  doc: '2               type of score used for clustering [1:2]. 1=alignment score.
    2=sequence identity '
  type: boolean
  inputBinding:
    prefix: --similarity-type
- id: km_er_per_seq
  doc: '21              kmer per sequence                                           '
  type: boolean
  inputBinding:
    prefix: --kmer-per-seq
- id: hash_shift
  doc: '5               Shift k-mer hash                                            '
  type: boolean
  inputBinding:
    prefix: --hash-shift
- id: include_only_extendable
  doc: 'false           Include only extendable                                     '
  type: boolean
  inputBinding:
    prefix: --include-only-extendable
- id: skip_n_repeat_km_er
  doc: '0               Skip sequence with >= n exact repeating k-mers              '
  type: boolean
  inputBinding:
    prefix: --skip-n-repeat-kmer
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
- id: re_score_mode
  doc: '0               Rescore diagonal with: 0: Hamming distance, 1: local alignment
    (score only) or 2: local alignment'
  type: boolean
  inputBinding:
    prefix: --rescore-mode
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- linclust
