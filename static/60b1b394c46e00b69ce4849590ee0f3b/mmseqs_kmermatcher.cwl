class: CommandLineTool
id: mmseqs_kmermatcher.cwl
inputs:
- id: in_alph_size
  doc: 13              alphabet size [2,21]
  type: boolean?
  inputBinding:
    prefix: --alph-size
- id: in_mask
  doc: '0               0: w/o low complexity masking, 1: with low complexity masking'
  type: boolean?
  inputBinding:
    prefix: --mask
- id: in_kmer_size_range
  doc: '0               k-mer size in the range [6,7] (0: set automatically to optimum)'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_split_memory_limit
  doc: 0               Maximum system memory in megabyte that one split may use. Defaults
    (0) to all available system memory.
  type: boolean?
  inputBinding:
    prefix: --split-memory-limit
- id: in_min_seq_id
  doc: 0.000           list matches above this sequence identity (for clustering)
    [0.0,1.0]
  type: boolean?
  inputBinding:
    prefix: --min-seq-id
- id: in_cov_mode
  doc: '0               0: coverage of query and target, 1: coverage of target, 2:
    coverage of query 3: target seq. length needs be at least x% of query length'
  type: boolean?
  inputBinding:
    prefix: --cov-mode
- id: in_list_matches_fraction
  doc: 0.800           list matches above this fraction of aligned (covered) residues
    (see --cov-mode)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_km_er_per_seq
  doc: 0               kmer per sequence
  type: boolean?
  inputBinding:
    prefix: --kmer-per-seq
- id: in_hash_shift
  doc: 5               Shift k-mer hash
  type: boolean?
  inputBinding:
    prefix: --hash-shift
- id: in_include_only_extendable
  doc: false           Include only extendable
  type: boolean?
  inputBinding:
    prefix: --include-only-extendable
- id: in_skip_n_repeat_km_er
  doc: 0               Skip sequence with >= n exact repeating k-mers
  type: boolean?
  inputBinding:
    prefix: --skip-n-repeat-kmer
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
- kmermatcher
