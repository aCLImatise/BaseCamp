class: CommandLineTool
id: metaeuk_easy_predict.cwl
inputs:
- id: comp_bias_corr
  doc: Correct for locally biased amino acid composition (range 0-1) [1]
  type: long
  inputBinding:
    prefix: --comp-bias-corr
- id: add_self_matches
  doc: Artificially add entries of queries with themselves (for clustering) [0]
  type: boolean
  inputBinding:
    prefix: --add-self-matches
- id: seed_sub_mat
  doc: Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:VTML80.out]
  type: string
  inputBinding:
    prefix: --seed-sub-mat
- id: s
  doc: 'Sensitivity: 1.0 faster; 4.0 fast; 7.5 sensitive [4.000]'
  type: double
  inputBinding:
    prefix: -s
- id: k
  doc: 'k-mer length (0: automatically set to optimum) [0]'
  type: long
  inputBinding:
    prefix: -k
- id: k_score
  doc: k-mer threshold for generating similar k-mer lists [2147483647]
  type: long
  inputBinding:
    prefix: --k-score
- id: alph_size
  doc: Alphabet size (range 2-21) [nucl:5,aa:21]
  type: string
  inputBinding:
    prefix: --alph-size
- id: max_seqs
  doc: Maximum results per query sequence allowed to pass the prefilter (affects sensitivity)
    [300]
  type: long
  inputBinding:
    prefix: --max-seqs
- id: split
  doc: 'Split input into N equally distributed chunks. 0: set the best split automatically
    [0]'
  type: long
  inputBinding:
    prefix: --split
- id: split_mode
  doc: '0: split target db; 1: split query db; 2: auto, depending on main memory [2]'
  type: long
  inputBinding:
    prefix: --split-mode
- id: split_memory_limit
  doc: Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available
    system memory [0]
  type: string
  inputBinding:
    prefix: --split-memory-limit
- id: diag_score
  doc: Use ungapped diagonal scoring during prefilter [1]
  type: boolean
  inputBinding:
    prefix: --diag-score
- id: exact_km_er_matching
  doc: Extract only exact k-mers for matching (range 0-1) [0]
  type: long
  inputBinding:
    prefix: --exact-kmer-matching
- id: mask
  doc: 'Mask sequences in k-mer stage: 0: w/o low complexity masking, 1: with low
    complexity masking [1]'
  type: long
  inputBinding:
    prefix: --mask
- id: mask_lower_case
  doc: 'Lowercase letters will be excluded from k-mer search 0: include region, 1:
    exclude region [0]'
  type: long
  inputBinding:
    prefix: --mask-lower-case
- id: min_un_gapped_score
  doc: Accept only matches with ungapped alignment score above threshold [15]
  type: long
  inputBinding:
    prefix: --min-ungapped-score
- id: spaced_km_er_mode
  doc: '0: use consecutive positions in k-mers; 1: use spaced k-mers [1]'
  type: long
  inputBinding:
    prefix: --spaced-kmer-mode
- id: spaced_km_er_pattern
  doc: User-specified spaced k-mer pattern []
  type: string
  inputBinding:
    prefix: --spaced-kmer-pattern
- id: local_tmp
  doc: Path where some of the temporary files will be created []
  type: string
  inputBinding:
    prefix: --local-tmp
- id: disk_space_limit
  doc: Set max disk space to use for reverse profile searches. E.g. 800B, 5K, 10M,
    1G. Default (0) to all available disk space in the temp folder [0]
  type: string
  inputBinding:
    prefix: --disk-space-limit
- id: a
  doc: Add backtrace string (convert to alignments with mmseqs convertalis module)
    [0]
  type: boolean
  inputBinding:
    prefix: -a
- id: alignment_mode
  doc: 'How to compute the alignment: 0: automatic; 1: only score and end_pos; 2:
    also start_pos and cov; 3: also seq.id; 4: only ungapped alignment [2]'
  type: long
  inputBinding:
    prefix: --alignment-mode
- id: wrapped_scoring
  doc: Double the (nucleotide) query sequence during the scoring process to allow
    wrapped diagonal scoring around end and start [0]
  type: boolean
  inputBinding:
    prefix: --wrapped-scoring
- id: e
  doc: List matches below this E-value (range 0.0-inf) [100.000]
  type: double
  inputBinding:
    prefix: -e
- id: min_seq_id
  doc: List matches above this sequence identity (for clustering) (range 0.0-1.0)
    [0.000]
  type: double
  inputBinding:
    prefix: --min-seq-id
- id: min_aln_len
  doc: Minimum alignment length (range 0-INT_MAX) [0]
  type: long
  inputBinding:
    prefix: --min-aln-len
- id: seq_id_mode
  doc: '0: alignment length 1: shorter, 2: longer sequence [0]'
  type: long
  inputBinding:
    prefix: --seq-id-mode
- id: alt_ali
  doc: Show up to this many alternative alignments [0]
  type: long
  inputBinding:
    prefix: --alt-ali
- id: c
  doc: List matches above this fraction of aligned (covered) residues (see --cov-mode)
    [0.000]
  type: double
  inputBinding:
    prefix: -c
- id: cov_mode
  doc: '0: coverage of query and target 1: coverage of target 2: coverage of query
    3: target seq. length has to be at least x% of query length 4: query seq. length
    has to be at least x% of target length 5: short seq. needs to be at least x% of
    the other seq. length [0]'
  type: long
  inputBinding:
    prefix: --cov-mode
- id: realign
  doc: Compute more conservative, shorter alignments (scores and E-values not changed)
    [0]
  type: boolean
  inputBinding:
    prefix: --realign
- id: max_rejected
  doc: Maximum rejected alignments before alignment calculation for a query is stopped
    [2147483647]
  type: long
  inputBinding:
    prefix: --max-rejected
- id: max_accept
  doc: Maximum accepted alignments before alignment calculation for a query is stopped
    [2147483647]
  type: long
  inputBinding:
    prefix: --max-accept
- id: score_bias
  doc: Score bias when computing SW alignment (in bits) [0.000]
  type: double
  inputBinding:
    prefix: --score-bias
- id: gap_open
  doc: Gap open cost [11]
  type: long
  inputBinding:
    prefix: --gap-open
- id: gap_extend
  doc: Gap extension cost [1]
  type: long
  inputBinding:
    prefix: --gap-extend
- id: z_drop
  doc: Maximal allowed difference between score values before alignment is truncated  (nucleotide
    alignment only) [40]
  type: long
  inputBinding:
    prefix: --zdrop
- id: pc_a
  doc: Pseudo count admixture strength [1.000]
  type: double
  inputBinding:
    prefix: --pca
- id: pcb
  doc: 'Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]'
  type: double
  inputBinding:
    prefix: --pcb
- id: mask_profile
  doc: Mask query sequence of profile using tantan [0,1] [1]
  type: long
  inputBinding:
    prefix: --mask-profile
- id: e_profile
  doc: Include sequences matches with < e-value thr. into the profile (>=0.0) [0.001]
  type: double
  inputBinding:
    prefix: --e-profile
- id: wg
  doc: Use global sequence weighting for profile calculation [0]
  type: boolean
  inputBinding:
    prefix: --wg
- id: filter_msa
  doc: 'Filter msa: 0: do not filter, 1: filter [1]'
  type: long
  inputBinding:
    prefix: --filter-msa
- id: max_seq_id
  doc: Reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0]
    [0.900]
  type: double
  inputBinding:
    prefix: --max-seq-id
- id: qid
  doc: Reduce diversity of output MSAs using min.seq. identity with query sequences
    [0.0,1.0] [0.000]
  type: double
  inputBinding:
    prefix: --qid
- id: qsc
  doc: Reduce diversity of output MSAs using min. score per aligned residue with query
    sequences [-50.0,100.0] [-20.000]
  type: double
  inputBinding:
    prefix: --qsc
- id: cov
  doc: Filter output MSAs using min. fraction of query residues covered by matched
    sequences [0.0,1.0] [0.000]
  type: double
  inputBinding:
    prefix: --cov
- id: diff
  doc: Filter MSAs by selecting most diverse set of sequences, keeping at least this
    many seqs in each MSA block of length 50 [1000]
  type: long
  inputBinding:
    prefix: --diff
- id: num_iterations
  doc: Number of iterative profile search iterations [1]
  type: long
  inputBinding:
    prefix: --num-iterations
- id: slice_search
  doc: For bigger profile DB, run iteratively the search by greedily swapping the
    search results [0]
  type: boolean
  inputBinding:
    prefix: --slice-search
- id: re_score_mode
  doc: 'Rescore diagonals with: 0: Hamming distance 1: local alignment (score only)
    2: local alignment 3: global alignment 4: longest alignment fullfilling window
    quality criterion [0]'
  type: long
  inputBinding:
    prefix: --rescore-mode
- id: allow_deletion
  doc: Allow deletions in a MSA [0]
  type: boolean
  inputBinding:
    prefix: --allow-deletion
- id: min_length
  doc: Minimum codon number in open reading frames [15]
  type: long
  inputBinding:
    prefix: --min-length
- id: max_length
  doc: Maximum codon number in open reading frames [32734]
  type: long
  inputBinding:
    prefix: --max-length
- id: max_gaps
  doc: Maximum number of codons with gaps or unknown residues before an open reading
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
  doc: 'Contig end can be 0: incomplete, 1: complete, 2: both [2]'
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
  doc: Comma-seperated list of frames on the forward strand to be extracted [1,2,3]
  type: string
  inputBinding:
    prefix: --forward-frames
- id: reverse_frames
  doc: Comma-seperated list of frames on the reverse strand to be extracted [1,2,3]
  type: string
  inputBinding:
    prefix: --reverse-frames
- id: translation_table
  doc: 1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL,
    5) INVERT_MITOCHONDRIAL, 6) CILIATE 9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11)
    PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL
    15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL,
    22) SCENEDESMUS_MITOCHONDRIAL 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL,
    25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA 29) MESODINIUM,
    30) PERTRICH, 31) BLASTOCRITHIDIA [1]
  type: long
  inputBinding:
    prefix: --translation-table
- id: translate
  doc: Translate ORF to amino acid [0]
  type: long
  inputBinding:
    prefix: --translate
- id: use_all_table_starts
  doc: Use all alteratives for a start codon in the genetic table, if false - only
    ATG (AUG) [0]
  type: boolean
  inputBinding:
    prefix: --use-all-table-starts
- id: id_offset
  doc: Numeric ids in index file are offset by this value [0]
  type: long
  inputBinding:
    prefix: --id-offset
- id: add_orf_stop
  doc: Add stop codon '*' at complete start and end [0]
  type: boolean
  inputBinding:
    prefix: --add-orf-stop
- id: search_type
  doc: 'Search type 0: auto 1: amino acid, 2: translated, 3: nucleotide, 4: translated
    nucleotide alignment [0]'
  type: long
  inputBinding:
    prefix: --search-type
- id: start_sens
  doc: Start sensitivity [4.000]
  type: double
  inputBinding:
    prefix: --start-sens
- id: sens_steps
  doc: Number of search steps performed from --start-sens to -s [1]
  type: long
  inputBinding:
    prefix: --sens-steps
- id: meta_e_uk_eval
  doc: maximal combined evalue of an optimal set [0.0, inf] [0.001]
  type: double
  inputBinding:
    prefix: --metaeuk-eval
- id: meta_e_uk_t_cov
  doc: minimal length ratio of combined set to target [0.0, 1.0] [0.500]
  type: double
  inputBinding:
    prefix: --metaeuk-tcov
- id: max_intron
  doc: Maximal allowed intron length [10000]
  type: long
  inputBinding:
    prefix: --max-intron
- id: min_intron
  doc: Minimal allowed intron length [15]
  type: long
  inputBinding:
    prefix: --min-intron
- id: min_exon_aa
  doc: Minimal allowed exon length in amino acids [11]
  type: long
  inputBinding:
    prefix: --min-exon-aa
- id: max_overlap
  doc: Maximal allowed overlap of consecutive exons in amino acids [10]
  type: long
  inputBinding:
    prefix: --max-overlap
- id: set_gap_open
  doc: Gap open penalty (negative) for missed target amino acids between exons [-1]
  type: long
  inputBinding:
    prefix: --set-gap-open
- id: set_gap_extend
  doc: Gap extend penalty (negative) for missed target amino acids between exons [-1]
  type: long
  inputBinding:
    prefix: --set-gap-extend
- id: overlap
  doc: allow predictions to overlap another on the same strand. when not allowed (default),
    only the prediction with better E-value will be retained [0,1] [0]
  type: long
  inputBinding:
    prefix: --overlap
- id: protein
  doc: translate the joint exons coding sequence to amino acids [0,1] [0]
  type: long
  inputBinding:
    prefix: --protein
- id: target_key
  doc: write the target key (internal DB identifier) instead of its accession. By
    default (0) target accession will be written [0,1] [0]
  type: long
  inputBinding:
    prefix: --target-key
- id: reverse_fragments
  doc: reverse AA fragments to compute under null [0,1] [0]
  type: long
  inputBinding:
    prefix: --reverse-fragments
- id: sub_mat
  doc: Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: string
  inputBinding:
    prefix: --sub-mat
- id: max_seq_len
  doc: Maximum sequence length [65535]
  type: long
  inputBinding:
    prefix: --max-seq-len
- id: db_load_mode
  doc: 'Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]'
  type: long
  inputBinding:
    prefix: --db-load-mode
- id: threads
  doc: Number of CPU-cores used (all by default) [8]
  type: long
  inputBinding:
    prefix: --threads
- id: compressed
  doc: Write compressed output [0]
  type: long
  inputBinding:
    prefix: --compressed
- id: v
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long
  inputBinding:
    prefix: -v
- id: mpi_runner
  doc: Use MPI on compute cluster with this MPI command (e.g. "mpirun -np 42") []
  type: string
  inputBinding:
    prefix: --mpi-runner
- id: force_reuse
  doc: Reuse tmp filse in tmp/latest folder ignoring parameters and version changes
    [0]
  type: boolean
  inputBinding:
    prefix: --force-reuse
- id: remove_tmp_files
  doc: Delete temporary files [0]
  type: boolean
  inputBinding:
    prefix: --remove-tmp-files
- id: filter_hits
  doc: Filter hits by seq.id. and coverage [0]
  type: boolean
  inputBinding:
    prefix: --filter-hits
- id: sort_results
  doc: 'Sort results: 0: no sorting, 1: sort by E-value (Alignment) or seq.id. (Hamming)
    [0]'
  type: long
  inputBinding:
    prefix: --sort-results
- id: omit_consensus
  doc: Omit consensus sequence in alignment [0]
  type: boolean
  inputBinding:
    prefix: --omit-consensus
- id: create_lookup
  doc: Create database lookup file (can be very large) [0]
  type: long
  inputBinding:
    prefix: --create-lookup
- id: chain_alignments
  doc: Chain overlapping alignments [0]
  type: long
  inputBinding:
    prefix: --chain-alignments
- id: merge_query
  doc: Combine ORFs/split sequences to a single entry [1]
  type: long
  inputBinding:
    prefix: --merge-query
- id: strand
  doc: 'Strand selection only works for DNA/DNA search 0: reverse, 1: forward, 2:
    both [1]'
  type: long
  inputBinding:
    prefix: --strand
- id: levy
  doc: 'E, Mirdita M, Soeding J: MetaEuk – sensitive, high-throughput gene discovery
    and annotation for large-scale eukaryotic metagenomics. biorxiv, 851964 (2019).'
  type: string
  inputBinding:
    prefix: '- Levy'
outputs: []
cwlVersion: v1.1
baseCommand:
- metaeuk
- easy-predict
