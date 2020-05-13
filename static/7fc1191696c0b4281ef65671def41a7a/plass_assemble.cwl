class: CommandLineTool
id: plass_assemble.cwl
inputs:
- id: add_self_matches
  doc: artificially add entries of queries with themselves (for clustering)
  type: boolean
  inputBinding:
    prefix: --add-self-matches
- id: alph_size
  doc: alphabet size (range 2-21) [13]
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
  doc: 'k-mer size in the range (0: set automatically to optimum) [14]'
  type: long
  inputBinding:
    prefix: -k
- id: split_memory_limit
  doc: Set max memory per split. E.g. 800B, 5K, 10M, 1G. Defaults (0) to all available
    system memory. [0]
  type: string
  inputBinding:
    prefix: --split-memory-limit
- id: e
  doc: Extend sequences if the E-value is below [0.0, inf] [0.000]
  type: double
  inputBinding:
    prefix: -e
- id: c
  doc: list matches above this fraction of aligned (covered) residues (see --cov-mode)
    [0.000]
  type: double
  inputBinding:
    prefix: -c
- id: a
  doc: add backtrace string (convert to alignments with mmseqs convertalis utility)
  type: boolean
  inputBinding:
    prefix: -a
- id: cov_mode
  doc: '0: coverage of query and target, 1: coverage of target, 2: coverage of query
    3: target seq. length needs to be at least x% of query length, 4: query seq. length
    needs to be at least x% of target length 5: short seq. needs to be at least x%
    of the other seq. length [0]'
  type: long
  inputBinding:
    prefix: --cov-mode
- id: min_seq_id
  doc: Overlap sequence identity threshold [0.0, 1.0] [0.900]
  type: double
  inputBinding:
    prefix: --min-seq-id
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
  doc: 0      Include only extendable [1, set to 0 to disable]
  type: boolean
  inputBinding:
    prefix: --include-only-extendable
- id: ignore_multi_km_er
  doc: 0            Skip kmers occuring multiple times (>=2) [1, set to 0 to disable]
  type: boolean
  inputBinding:
    prefix: --ignore-multi-kmer
- id: num_iterations
  doc: Number of assembly iterations [1, inf] [12]
  type: long
  inputBinding:
    prefix: --num-iterations
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
- id: min_length
  doc: minimum codon number in open reading frames [45]
  type: long
  inputBinding:
    prefix: --min-length
- id: max_length
  doc: maximum codon number in open reading frames [32734]
  type: long
  inputBinding:
    prefix: --max-length
- id: max_gaps
  doc: maximum number of codons with gaps or unknown residues before an open reading
    frame is rejected [2147483647]
  type: long
  inputBinding:
    prefix: --max-gaps
- id: contig_start_mode
  doc: 'Contig start can be 0: incomplete, 1: complete, 2: both [2]'
  type: long
  inputBinding:
    prefix: --contig-start-mode
- id: contig_end_mode
  doc: 'Contig end can be 0: incomplete, 1: complete, 2: both  [2]'
  type: long
  inputBinding:
    prefix: --contig-end-mode
- id: orf_start_mode
  doc: 'Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last
    encountered start to stop (no start in the middle) [1]'
  type: long
  inputBinding:
    prefix: --orf-start-mode
- id: forward_frames
  doc: comma-seperated list of ORF frames on the forward strand to be extracted [1,2,3]
  type: string
  inputBinding:
    prefix: --forward-frames
- id: reverse_frames
  doc: comma-seperated list of ORF frames on the reverse strand to be extracted [1,2,3]
  type: string
  inputBinding:
    prefix: --reverse-frames
- id: translation_table
  doc: 1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL,
    5) INVERT_MITOCHONDRIAL, 6) CILIATE, 9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID,
    11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL,
    15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL,
    22) SCENEDESMUS_MITOCHONDRIAL, 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL,
    25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA, 29) MESODINIUM,
    30) PERTRICH, 31) BLASTOCRITHIDIA [1]
  type: long
  inputBinding:
    prefix: --translation-table
- id: translate
  doc: translate ORF to amino acid [0]
  type: long
  inputBinding:
    prefix: --translate
- id: use_all_table_starts
  doc: use all alteratives for a start codon in the genetic table, if false - only
    ATG (AUG)
  type: boolean
  inputBinding:
    prefix: --use-all-table-starts
- id: id_offset
  doc: numeric ids in index file are offset by this value  [0]
  type: long
  inputBinding:
    prefix: --id-offset
- id: protein_filter_threshold
  doc: filter proteins lower than threshold [0.0,1.0] [0.200]
  type: double
  inputBinding:
    prefix: --protein-filter-threshold
- id: filter_proteins
  doc: filter proteins by a neural network [0,1] [1]
  type: long
  inputBinding:
    prefix: --filter-proteins
- id: delete_tmp_inc
  doc: delete temporary files incremental [0,1] [1]
  type: long
  inputBinding:
    prefix: --delete-tmp-inc
- id: remove_tmp_files
  doc: Delete temporary files
  type: boolean
  inputBinding:
    prefix: --remove-tmp-files
- id: sub_mat
  doc: amino acid substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: string
  inputBinding:
    prefix: --sub-mat
- id: db_load_mode
  doc: 'Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]'
  type: long
  inputBinding:
    prefix: --db-load-mode
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
- id: max_seq_len
  doc: maximum sequence length (range 1-32768]) [65535]
  type: long
  inputBinding:
    prefix: --max-seq-len
- id: mpi_runner
  doc: Use MPI on compute grid with this MPI command (e.g. "mpirun -np 42") []
  type: string
  inputBinding:
    prefix: --mpi-runner
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
- id: km_er_per_seq_scale
  doc: scale kmer per sequence based on sequence length as kmer-per-seq val + scale
    x seqlen [0.000]
  type: double
  inputBinding:
    prefix: --kmer-per-seq-scale
- id: create_lookup
  doc: Create database lookup file (can be very large) [0]
  type: long
  inputBinding:
    prefix: --create-lookup
outputs: []
cwlVersion: v1.1
baseCommand:
- plass
- assemble
