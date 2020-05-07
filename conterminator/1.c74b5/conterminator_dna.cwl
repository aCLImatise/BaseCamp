class: CommandLineTool
id: conterminator_dna.cwl
inputs:
- id: comp_bias_corr
  doc: correct for locally biased amino acid composition (range 0-1) [0]
  type: long
  inputBinding:
    prefix: --comp-bias-corr
- id: add_self_matches
  doc: artificially add entries of queries with themselves (for clustering)
  type: boolean
  inputBinding:
    prefix: --add-self-matches
- id: seed_sub_mat
  doc: amino acid substitution matrix for kmer generation file [nucl:nucleotide.out,aa:VTML80.out]
  type: string
  inputBinding:
    prefix: --seed-sub-mat
- id: s
  doc: 'sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive (range 1.0-7.5) [5.700]'
  type: double
  inputBinding:
    prefix: -s
- id: k
  doc: 'k-mer size in the range (0: set automatically to optimum) [15]'
  type: long
  inputBinding:
    prefix: -k
- id: k_score
  doc: K-mer threshold for generating similar k-mer lists [2147483647]
  type: long
  inputBinding:
    prefix: --k-score
- id: alph_size
  doc: alphabet size (range 2-21) [21]
  type: long
  inputBinding:
    prefix: --alph-size
- id: split
  doc: Splits input sets into N equally distributed chunks. The default value sets
    the best split automatically. createindex can only be used with split 1. [0]
  type: long
  inputBinding:
    prefix: --split
- id: split_mode
  doc: '0: split target db; 1: split query db;  2: auto, depending on main memory
    [2]'
  type: long
  inputBinding:
    prefix: --split-mode
- id: diag_score
  doc: Use ungapped diagonal scoring during prefilter
  type: boolean
  inputBinding:
    prefix: --diag-score
- id: exact_km_er_matching
  doc: only exact k-mer matching (range 0-1) [1]
  type: long
  inputBinding:
    prefix: --exact-kmer-matching
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
- id: min_un_gapped_score
  doc: accept only matches with ungapped alignment score above this threshold [25]
  type: long
  inputBinding:
    prefix: --min-ungapped-score
- id: spaced_km_er_mode
  doc: '0: use consecutive positions a k-mers; 1: use spaced k-mers [1]'
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
    1G. Defaults (0) to all available disk space in the temp folder. [0]
  type: string
  inputBinding:
    prefix: --disk-space-limit
- id: a
  doc: 0                         add backtrace string (convert to alignments with
    mmseqs convertalis utility) [1, set to 0 to disable]
  type: boolean
  inputBinding:
    prefix: -a
- id: alignment_mode
  doc: 'How to compute the alignment: 0: automatic; 1: only score and end_pos; 2:
    also start_pos and cov; 3: also seq.id; 4: only ungapped alignment [3]'
  type: long
  inputBinding:
    prefix: --alignment-mode
- id: e
  doc: list matches below this E-value (range 0.0-inf) [0.001]
  type: double
  inputBinding:
    prefix: -e
- id: min_seq_id
  doc: list matches above this sequence identity (for clustering) (range 0.0-1.0)
    [0.900]
  type: double
  inputBinding:
    prefix: --min-seq-id
- id: min_aln_len
  doc: minimum alignment length (range 0-INT_MAX) [100]
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
  doc: list matches above this fraction of aligned (covered) residues (see --cov-mode)
    [0.000]
  type: double
  inputBinding:
    prefix: -c
- id: cov_mode
  doc: '0: coverage of query and target, 1: coverage of target, 2: coverage of query
    3: target seq. length needs to be at least x% of query length, 4: query seq. length
    needs to be at least x% of target length 5: short seq. needs to be at least x%
    of the other seq. length [0]'
  type: long
  inputBinding:
    prefix: --cov-mode
- id: realign
  doc: compute more conservative, shorter alignments (scores and E-values not changed)
  type: boolean
  inputBinding:
    prefix: --realign
- id: max_rejected
  doc: maximum rejected alignments before alignment calculation for a query is aborted
    [2147483647]
  type: long
  inputBinding:
    prefix: --max-rejected
- id: max_accept
  doc: maximum accepted alignments before alignment calculation for a query is stopped
    [2147483647]
  type: long
  inputBinding:
    prefix: --max-accept
- id: score_bias
  doc: Score bias when computing the SW alignment (in bits) [0.000]
  type: double
  inputBinding:
    prefix: --score-bias
- id: gap_open
  doc: Gap open cost [5]
  type: long
  inputBinding:
    prefix: --gap-open
- id: gap_extend
  doc: Gap extension cost [2]
  type: long
  inputBinding:
    prefix: --gap-extend
- id: pc_a
  doc: pseudo count admixture strength [1.000]
  type: double
  inputBinding:
    prefix: --pca
- id: pcb
  doc: 'pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]'
  type: double
  inputBinding:
    prefix: --pcb
- id: mask_profile
  doc: mask query sequence of profile using tantan [0,1] [1]
  type: long
  inputBinding:
    prefix: --mask-profile
- id: e_profile
  doc: includes sequences matches with < e-value thr. into the profile (>=0.0) [0.001]
  type: double
  inputBinding:
    prefix: --e-profile
- id: wg
  doc: use global sequence weighting for profile calculation
  type: boolean
  inputBinding:
    prefix: --wg
- id: filter_msa
  doc: 'filter msa: 0: do not filter, 1: filter [1]'
  type: long
  inputBinding:
    prefix: --filter-msa
- id: max_seq_id
  doc: reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0]
    [0.900]
  type: double
  inputBinding:
    prefix: --max-seq-id
- id: qid
  doc: reduce diversity of output MSAs using min.seq. identity with query sequences
    [0.0,1.0] [0.000]
  type: double
  inputBinding:
    prefix: --qid
- id: qsc
  doc: reduce diversity of output MSAs using min. score per aligned residue with query
    sequences [-50.0,100.0] [-20.000]
  type: double
  inputBinding:
    prefix: --qsc
- id: cov
  doc: filter output MSAs using min. fraction of query residues covered by matched
    sequences [0.0,1.0] [0.000]
  type: double
  inputBinding:
    prefix: --cov
- id: diff
  doc: filter MSAs by selecting most diverse set of sequences, keeping at least this
    many seqs in each MSA block of length 50 [1000]
  type: long
  inputBinding:
    prefix: --diff
- id: num_iterations
  doc: Search iterations [1]
  type: long
  inputBinding:
    prefix: --num-iterations
- id: slice_search
  doc: For bigger profile DB, run iteratively the search by greedily swapping the
    search results.
  type: boolean
  inputBinding:
    prefix: --slice-search
- id: wrapped_scoring
  doc: Double the (nucleotide) query sequence during the scoring process to allow
    wrapped diagonal scoring around end and start
  type: boolean
  inputBinding:
    prefix: --wrapped-scoring
- id: re_score_mode
  doc: 'Rescore diagonal with: 0: Hamming distance, 1: local alignment (score only),
    2: local alignment, 3: global alignment or 4: longest alignment fullfilling window
    quality criterion [2]'
  type: long
  inputBinding:
    prefix: --rescore-mode
- id: allow_deletion
  doc: allow deletions in a MSA
  type: boolean
  inputBinding:
    prefix: --allow-deletion
- id: min_length
  doc: minimum codon number in open reading frames [30]
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
  doc: comma-seperated list of ORF frames on the forward strand to be extracted [1]
  type: string
  inputBinding:
    prefix: --forward-frames
- id: reverse_frames
  doc: comma-seperated list of ORF frames on the reverse strand to be extracted [1]
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
- id: add_orf_stop
  doc: add * at complete start and end
  type: boolean
  inputBinding:
    prefix: --add-orf-stop
- id: search_type
  doc: 'search type 0: auto 1: amino acid, 2: translated, 3: nucleotide, 4: translated
    nucleotide alignment [0]'
  type: long
  inputBinding:
    prefix: --search-type
- id: start_sens
  doc: start sensitivity [4.000]
  type: double
  inputBinding:
    prefix: --start-sens
- id: sens_steps
  doc: Search steps performed from --start-sense and -s. [1]
  type: long
  inputBinding:
    prefix: --sens-steps
- id: remove_tmp_files
  doc: 0         Delete temporary files [1, set to 0 to disable]
  type: boolean
  inputBinding:
    prefix: --remove-tmp-files
- id: dbtype
  doc: 'Database type 0: auto, 1: amino acid 2: nucleotides [0]'
  type: long
  inputBinding:
    prefix: --dbtype
- id: shuffle
  doc: 0                  Shuffle input database [1, set to 0 to disable]
  type: boolean
  inputBinding:
    prefix: --shuffle
- id: created_b_mode
  doc: 'createdb mode 0: copy data, 1: soft link data and write new index (works only
    with single line fasta/q) [0]'
  type: long
  inputBinding:
    prefix: --createdb-mode
- id: ncbi_tax_dump
  doc: NCBI tax dump directory. The tax dump can be downloaded here "ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz"
    []
  type: string
  inputBinding:
    prefix: --ncbi-tax-dump
- id: tax_mapping_file
  doc: File to map sequence identifer to taxonomical identifier []
  type: string
  inputBinding:
    prefix: --tax-mapping-file
- id: blacklist
  doc: Comma separated list of ignored taxa in LCA computation [10239,12908,28384,81077,11632,340016,61964,48479,48510]
  type: string
  inputBinding:
    prefix: --blacklist
- id: kingdoms
  doc: '[(2||2157),4751,33208,33090,(2759&&!4751&&!33208&&!33090)]'
  type: string
  inputBinding:
    prefix: --kingdoms
- id: sub_mat
  doc: amino acid substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]
  type: string
  inputBinding:
    prefix: --sub-mat
- id: max_seq_len
  doc: maximum sequence length (range 1-32768]) [1000]
  type: long
  inputBinding:
    prefix: --max-seq-len
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
- id: split_memory_limit
  doc: Set max memory per split. E.g. 800B, 5K, 10M, 1G. Defaults (0) to all available
    system memory. [0]
  type: string
  inputBinding:
    prefix: --split-memory-limit
- id: mpi_runner
  doc: Use MPI on compute grid with this MPI command (e.g. "mpirun -np 42") []
  type: string
  inputBinding:
    prefix: --mpi-runner
- id: force_reuse
  doc: reuse tmp file in tmp/latest folder ignoring parameters and git version change
  type: boolean
  inputBinding:
    prefix: --force-reuse
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
- id: omit_consensus
  doc: Omit consensus sequence in alignment
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
  doc: combine ORFs/split sequences to a single entry [1]
  type: long
  inputBinding:
    prefix: --merge-query
- id: strand
  doc: 'Strand selection only works for DNA/DNA search 0: reverse, 1: forward, 2:
    both [2]'
  type: long
  inputBinding:
    prefix: --strand
- id: stein_egger
  doc: ', Soding J: MMseqs2 enables sensitive protein sequence searching for the analysis
    of massive data sets. Nature Biotechnology, 35(11), 1026-1028 (2017)'
  type: string
  inputBinding:
    prefix: '- Steinegger'
outputs: []
cwlVersion: v1.1
baseCommand:
- conterminator
- dna
