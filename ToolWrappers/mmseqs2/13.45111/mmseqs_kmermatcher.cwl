class: CommandLineTool
id: mmseqs_kmermatcher.cwl
inputs:
- id: in_alph_size
  doc: Alphabet size (range 2-21) [nucl:5,aa:13]
  type: long?
  inputBinding:
    prefix: --alph-size
- id: in_spaced_km_er_mode
  doc: '0: use consecutive positions in k-mers; 1: use spaced k-mers [0]'
  type: long?
  inputBinding:
    prefix: --spaced-kmer-mode
- id: in_spaced_km_er_pattern
  doc: User-specified spaced k-mer pattern []
  type: string?
  inputBinding:
    prefix: --spaced-kmer-pattern
- id: in_mask
  doc: 'Mask sequences in k-mer stage: 0: w/o low complexity masking, 1: with low
    complexity masking [0]'
  type: long?
  inputBinding:
    prefix: --mask
- id: in_mask_lower_case
  doc: 'Lowercase letters will be excluded from k-mer search 0: include region, 1:
    exclude region [0]'
  type: long?
  inputBinding:
    prefix: --mask-lower-case
- id: in_kmer_length_set
  doc: 'k-mer length (0: automatically set to optimum) [0]'
  type: long?
  inputBinding:
    prefix: -k
- id: in_split_memory_limit
  doc: Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available
    system memory [0]
  type: long?
  inputBinding:
    prefix: --split-memory-limit
- id: in_min_seq_id
  doc: List matches above this sequence identity (for clustering) (range 0.0-1.0)
    [0.000]
  type: double?
  inputBinding:
    prefix: --min-seq-id
- id: in_cov_mode
  doc: "0: coverage of query and target\n1: coverage of target\n2: coverage of query\n\
    3: target seq. length has to be at least x% of query length\n4: query seq. length\
    \ has to be at least x% of target length\n5: short seq. needs to be at least x%\
    \ of the other seq. length [0]"
  type: long?
  inputBinding:
    prefix: --cov-mode
- id: in_list_matches_fraction
  doc: List matches above this fraction of aligned (covered) residues (see --cov-mode)
    [0.800]
  type: double?
  inputBinding:
    prefix: -c
- id: in_km_er_per_seq
  doc: k-mers per sequence [0]
  type: long?
  inputBinding:
    prefix: --kmer-per-seq
- id: in_km_er_per_seq_scale
  doc: Scale k-mer per sequence based on sequence length as kmer-per-seq val + scale
    x seqlen [nucl:0.200,aa:0.000]
  type: long?
  inputBinding:
    prefix: --kmer-per-seq-scale
- id: in_adjust_km_er_len
  doc: Adjust k-mer length based on specificity (only for nucleotides) [0]
  type: boolean?
  inputBinding:
    prefix: --adjust-kmer-len
- id: in_hash_shift
  doc: Shift k-mer hash initialization [67]
  type: long?
  inputBinding:
    prefix: --hash-shift
- id: in_include_only_extendable
  doc: Include only extendable [0]
  type: boolean?
  inputBinding:
    prefix: --include-only-extendable
- id: in_ignore_multi_km_er
  doc: Skip k-mers occurring multiple times (>=2) [0]
  type: boolean?
  inputBinding:
    prefix: --ignore-multi-kmer
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
- kmermatcher
