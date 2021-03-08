class: CommandLineTool
id: mmseqs_prefilter.cwl
inputs:
- id: in_seed_sub_mat
  doc: Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:VTML80.out]
  type: File?
  inputBinding:
    prefix: --seed-sub-mat
- id: in_sensitivity_faster_fast
  doc: 'Sensitivity: 1.0 faster; 4.0 fast; 7.5 sensitive [4.000]'
  type: double?
  inputBinding:
    prefix: -s
- id: in_kmer_length_set
  doc: 'k-mer length (0: automatically set to optimum) [0]'
  type: long?
  inputBinding:
    prefix: -k
- id: in_k_score
  doc: k-mer threshold for generating similar k-mer lists [2147483647]
  type: long?
  inputBinding:
    prefix: --k-score
- id: in_alph_size
  doc: Alphabet size (range 2-21) [nucl:5,aa:21]
  type: long?
  inputBinding:
    prefix: --alph-size
- id: in_max_seqs
  doc: Maximum results per query sequence allowed to pass the prefilter (affects sensitivity)
    [300]
  type: long?
  inputBinding:
    prefix: --max-seqs
- id: in_split
  doc: 'Split input into N equally distributed chunks. 0: set the best split automatically
    [0]'
  type: long?
  inputBinding:
    prefix: --split
- id: in_split_mode
  doc: '0: split target db; 1: split query db; 2: auto, depending on main memory [2]'
  type: long?
  inputBinding:
    prefix: --split-mode
- id: in_split_memory_limit
  doc: Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available
    system memory [0]
  type: long?
  inputBinding:
    prefix: --split-memory-limit
- id: in_comp_bias_corr
  doc: Correct for locally biased amino acid composition (range 0-1) [1]
  type: long?
  inputBinding:
    prefix: --comp-bias-corr
- id: in_diag_score
  doc: Use ungapped diagonal scoring during prefilter [1]
  type: boolean?
  inputBinding:
    prefix: --diag-score
- id: in_exact_km_er_matching
  doc: Extract only exact k-mers for matching (range 0-1) [0]
  type: long?
  inputBinding:
    prefix: --exact-kmer-matching
- id: in_mask
  doc: 'Mask sequences in k-mer stage: 0: w/o low complexity masking, 1: with low
    complexity masking [1]'
  type: long?
  inputBinding:
    prefix: --mask
- id: in_mask_lower_case
  doc: 'Lowercase letters will be excluded from k-mer search 0: include region, 1:
    exclude region [0]'
  type: long?
  inputBinding:
    prefix: --mask-lower-case
- id: in_min_un_gapped_score
  doc: Accept only matches with ungapped alignment score above threshold [15]
  type: long?
  inputBinding:
    prefix: --min-ungapped-score
- id: in_add_self_matches
  doc: Artificially add entries of queries with themselves (for clustering) [0]
  type: boolean?
  inputBinding:
    prefix: --add-self-matches
- id: in_spaced_km_er_mode
  doc: '0: use consecutive positions in k-mers; 1: use spaced k-mers [1]'
  type: long?
  inputBinding:
    prefix: --spaced-kmer-mode
- id: in_spaced_km_er_pattern
  doc: User-specified spaced k-mer pattern []
  type: string?
  inputBinding:
    prefix: --spaced-kmer-pattern
- id: in_local_tmp
  doc: Path where some of the temporary files will be created []
  type: File?
  inputBinding:
    prefix: --local-tmp
- id: in_list_matches_fraction
  doc: List matches above this fraction of aligned (covered) residues (see --cov-mode)
    [0.000]
  type: double?
  inputBinding:
    prefix: -c
- id: in_cov_mode
  doc: "0: coverage of query and target\n1: coverage of target\n2: coverage of query\n\
    3: target seq. length has to be at least x% of query length\n4: query seq. length\
    \ has to be at least x% of target length\n5: short seq. needs to be at least x%\
    \ of the other seq. length [0]"
  type: long?
  inputBinding:
    prefix: --cov-mode
- id: in_pc_a
  doc: Pseudo count admixture strength [1.000]
  type: double?
  inputBinding:
    prefix: --pca
- id: in_pcb
  doc: 'Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]'
  type: double?
  inputBinding:
    prefix: --pcb
- id: in_sub_mat
  doc: Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  inputBinding:
    prefix: --sub-mat
- id: in_max_seq_len
  doc: Maximum sequence length [65535]
  type: long?
  inputBinding:
    prefix: --max-seq-len
- id: in_db_load_mode
  doc: 'Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]'
  type: long?
  inputBinding:
    prefix: --db-load-mode
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_seed_sub_mat
  doc: Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:VTML80.out]
  type: File?
  outputBinding:
    glob: $(inputs.in_seed_sub_mat)
- id: out_sub_mat
  doc: Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  outputBinding:
    glob: $(inputs.in_sub_mat)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- prefilter
