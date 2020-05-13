class: CommandLineTool
id: plass_nuclassemble.cwl
inputs:
- id: alph_size
  doc: alphabet size (range 2-21) [5]
  type: long
  inputBinding:
    prefix: --alph-size
- id: mask
  doc: 'mask sequences in k-mer stage 0: w/o low complexity masking, 1: with low complexity
    masking [0]'
  type: long
  inputBinding:
    prefix: --mask
- id: mask_lower_case
  doc: 'lowercase letters will be excluded from k-mer search 0: include region, 1:
    exclude region [0]'
  type: long
  inputBinding:
    prefix: --mask-lower-case
- id: k
  doc: 'k-mer size in the range (0: set automatically to optimum) [22]'
  type: long
  inputBinding:
    prefix: -k
- id: split_memory_limit
  doc: Set max memory per split. E.g. 800B, 5K, 10M, 1G. Defaults (0) to all available
    system memory. [0]
  type: string
  inputBinding:
    prefix: --split-memory-limit
- id: add_self_matches
  doc: artificially add entries of queries with themselves (for clustering)
  type: boolean
  inputBinding:
    prefix: --add-self-matches
- id: min_seq_id
  doc: Overlap sequence identity threshold [0.0, 1.0] [0.970]
  type: double
  inputBinding:
    prefix: --min-seq-id
- id: cov_mode
  doc: '0: coverage of query and target, 1: coverage of target, 2: coverage of query
    3: target seq. length needs to be at least x% of query length, 4: query seq. length
    needs to be at least x% of target length 5: short seq. needs to be at least x%
    of the other seq. length [0]'
  type: long
  inputBinding:
    prefix: --cov-mode
- id: c
  doc: list matches above this fraction of aligned (covered) residues (see --cov-mode)
    [0.000]
  type: double
  inputBinding:
    prefix: -c
- id: e
  doc: Extend sequences if the E-value is below [0.0, inf] [0.000]
  type: double
  inputBinding:
    prefix: -e
- id: a
  doc: add backtrace string (convert to alignments with mmseqs convertalis utility)
  type: boolean
  inputBinding:
    prefix: -a
- id: min_aln_len
  doc: minimum alignment length (range 0-INT_MAX) [0]
  type: long
  inputBinding:
    prefix: --min-aln-len
- id: seq_id_mode
  doc: '0: alignment length 1: shorter, 2: longer sequence [0]'
  type: long
  inputBinding:
    prefix: --seq-id-mode
- id: km_er_per_seq
  doc: kmer per sequence [60]
  type: long
  inputBinding:
    prefix: --kmer-per-seq
- id: adjust_km_er_len
  doc: adjust k-mer length based on specificity (only for nucleotides)
  type: boolean
  inputBinding:
    prefix: --adjust-kmer-len
- id: hash_shift
  doc: Shift k-mer hash [5]
  type: long
  inputBinding:
    prefix: --hash-shift
- id: include_only_extendable
  doc: 0     Include only extendable [1, set to 0 to disable]
  type: boolean
  inputBinding:
    prefix: --include-only-extendable
- id: ignore_multi_km_er
  doc: 0           Skip kmers occuring multiple times (>=2) [1, set to 0 to disable]
  type: boolean
  inputBinding:
    prefix: --ignore-multi-kmer
- id: num_iterations
  doc: Number of assembly iterations [1, inf] [12]
  type: long
  inputBinding:
    prefix: --num-iterations
- id: cycle_check
  doc: 0                 Check for circular sequences (avoid infinite extension of
    circular or long repeated regions)  [1, set to 0 to disable]
  type: boolean
  inputBinding:
    prefix: --cycle-check
- id: min_contig_len
  doc: Minimum length of assembled contig to output [1000]
  type: long
  inputBinding:
    prefix: --min-contig-len
- id: clust_thr
  doc: Threshold to reduce redundancy in assembly by applying the linclust algorithm
    (clustering threshold) (range 0.0-1.0) [0.970]
  type: double
  inputBinding:
    prefix: --clust-thr
- id: remove_tmp_files
  doc: Delete temporary files
  type: boolean
  inputBinding:
    prefix: --remove-tmp-files
- id: delete_tmp_inc
  doc: delete temporary files incremental [0,1] [1]
  type: long
  inputBinding:
    prefix: --delete-tmp-inc
- id: re_score_mode
  doc: 'Rescore diagonal with: 0: Hamming distance, 1: local alignment (score only),
    2: local alignment, 3: global alignment or 4: longest alignment fullfilling window
    quality criterion [3]'
  type: long
  inputBinding:
    prefix: --rescore-mode
- id: wrapped_scoring
  doc: Double the (nucleotide) query sequence during the scoring process to allow
    wrapped diagonal scoring around end and start
  type: boolean
  inputBinding:
    prefix: --wrapped-scoring
- id: chop_cycle
  doc: 0                  Remove superfluous part of circular fragments [1, set to
    0 to disable]
  type: boolean
  inputBinding:
    prefix: --chop-cycle
- id: mpi_runner
  doc: Use MPI on compute grid with this MPI command (e.g. "mpirun -np 42") []
  type: string
  inputBinding:
    prefix: --mpi-runner
- id: sub_mat
  doc: amino acid substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: string
  inputBinding:
    prefix: --sub-mat
- id: max_seq_len
  doc: maximum sequence length (range 1-32768]) [65535]
  type: long
  inputBinding:
    prefix: --max-seq-len
- id: threads
  doc: number of cores used for the computation (uses all cores by default) [8]
  type: long
  inputBinding:
    prefix: --threads
- id: compressed
  doc: write results in compressed format [0]
  type: long
  inputBinding:
    prefix: --compressed
- id: v
  doc: 'verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long
  inputBinding:
    prefix: -v
- id: db_load_mode
  doc: 'Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]'
  type: long
  inputBinding:
    prefix: --db-load-mode
- id: km_er_per_seq_scale
  doc: scale kmer per sequence based on sequence length as kmer-per-seq val + scale
    x seqlen [0.100]
  type: double
  inputBinding:
    prefix: --kmer-per-seq-scale
- id: filter_hits
  doc: filter hits by seq.id. and coverage
  type: boolean
  inputBinding:
    prefix: --filter-hits
- id: sort_results
  doc: 'Sort results: 0: no sorting, 1: sort by evalue (Alignment) or seq.id. (Hamming)
    [0]'
  type: long
  inputBinding:
    prefix: --sort-results
outputs: []
cwlVersion: v1.1
baseCommand:
- plass
- nuclassemble
