class: CommandLineTool
id: mmseqs_search.cwl
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
- id: s
  doc: '5.700           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]'
  type: boolean
  inputBinding:
    prefix: -s
- id: k
  doc: '0               k-mer size in the range [6,7] (0: set automatically to optimum)'
  type: boolean
  inputBinding:
    prefix: -k
- id: k_score
  doc: '2147483647      k-mer threshold for generating similar-k-mer lists          '
  type: boolean
  inputBinding:
    prefix: --k-score
- id: alph_size
  doc: '21              alphabet size [2,21]                                        '
  type: boolean
  inputBinding:
    prefix: --alph-size
- id: offset_result
  doc: '0               Offset result list                                          '
  type: boolean
  inputBinding:
    prefix: --offset-result
- id: split
  doc: 0               Splits input sets into N equally distributed chunks. The default
    value sets the best split automatically. createindex can only be used with split
    1.
  type: boolean
  inputBinding:
    prefix: --split
- id: split_mode
  doc: '2               0: split target db; 1: split query db;  2: auto, depending
    on main memory'
  type: boolean
  inputBinding:
    prefix: --split-mode
- id: split_memory_limit
  doc: 0               Maximum system memory in megabyte that one split may use. Defaults
    (0) to all available system memory.
  type: boolean
  inputBinding:
    prefix: --split-memory-limit
- id: diag_score
  doc: '1               use diagonal score for sorting the prefilter results [0,1]  '
  type: boolean
  inputBinding:
    prefix: --diag-score
- id: exact_km_er_matching
  doc: '0               only exact k-mer matching [0,1]                             '
  type: boolean
  inputBinding:
    prefix: --exact-kmer-matching
- id: mask
  doc: '1               0: w/o low complexity masking, 1: with low complexity masking'
  type: boolean
  inputBinding:
    prefix: --mask
- id: min_un_gapped_score
  doc: 15              accept only matches with ungapped alignment score above this
    threshold
  type: boolean
  inputBinding:
    prefix: --min-ungapped-score
- id: spaced_km_er_mode
  doc: '1               0: use consecutive positions a k-mers; 1: use spaced k-mers '
  type: boolean
  inputBinding:
    prefix: --spaced-kmer-mode
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
  doc: 0.000           list matches above this sequence identity (for clustering)
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
  doc: 0.000           list matches above this fraction of aligned (covered) residues
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
- id: mask_profile
  doc: '1               mask query sequence of profile using tantan [0,1]           '
  type: boolean
  inputBinding:
    prefix: --mask-profile
- id: e_profile
  doc: 0.001           includes sequences matches with < e-value thr. into the profile
    [>=0.0]
  type: boolean
  inputBinding:
    prefix: --e-profile
- id: wg
  doc: 'false           use global sequence weighting for profile calculation       '
  type: boolean
  inputBinding:
    prefix: --wg
- id: filter_msa
  doc: '1               filter msa: 0: do not filter, 1: filter                     '
  type: boolean
  inputBinding:
    prefix: --filter-msa
- id: max_seq_id
  doc: 0.900           reduce redundancy of output MSA using max. pairwise sequence
    identity [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --max-seq-id
- id: qid
  doc: 0.000           reduce diversity of output MSAs using min.seq. identity with
    query sequences [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --qid
- id: qsc
  doc: -20.000         reduce diversity of output MSAs using min. score per aligned
    residue with query sequences [-50.0,100.0]
  type: boolean
  inputBinding:
    prefix: --qsc
- id: cov
  doc: 0.000           filter output MSAs using min. fraction of query residues covered
    by matched sequences [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --cov
- id: diff
  doc: 1000            filter MSAs by selecting most diverse set of sequences, keeping
    at least this many seqs in each MSA block of length 50
  type: boolean
  inputBinding:
    prefix: --diff
- id: num_iterations
  doc: '1               Search iterations                                           '
  type: boolean
  inputBinding:
    prefix: --num-iterations
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
- id: min_length
  doc: '30              minimum codon number in open reading frames                 '
  type: boolean
  inputBinding:
    prefix: --min-length
- id: max_length
  doc: '32734           maximum codon number in open reading frames                 '
  type: boolean
  inputBinding:
    prefix: --max-length
- id: max_gaps
  doc: 2147483647      maximum number of codons with gaps or unknown residues before
    an open reading frame is rejected
  type: boolean
  inputBinding:
    prefix: --max-gaps
- id: contig_start_mode
  doc: '2               Contig start can be 0: incomplete, 1: complete, 2: both     '
  type: boolean
  inputBinding:
    prefix: --contig-start-mode
- id: contig_end_mode
  doc: '2               Contig end can be 0: incomplete, 1: complete, 2: both       '
  type: boolean
  inputBinding:
    prefix: --contig-end-mode
- id: orf_start_mode
  doc: '0               Orf fragment can be 0: from start to stop, 1: from any to
    stop, 2: from last encountered start to stop (no start in the middle)'
  type: boolean
  inputBinding:
    prefix: --orf-start-mode
- id: forward_frames
  doc: 1,2,3           comma-seperated list of ORF frames on the forward strand to
    be extracted
  type: boolean
  inputBinding:
    prefix: --forward-frames
- id: reverse_frames
  doc: 1,2,3           comma-seperated list of ORF frames on the reverse strand to
    be extracted
  type: boolean
  inputBinding:
    prefix: --reverse-frames
- id: translation_table
  doc: 1               1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL,
    4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE, 9) FLATWORM_MITOCHONDRIAL,
    10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL,
    15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL,
    22) SCENEDESMUS_MITOCHONDRIAL, 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL,
    25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA, 29) MESODINIUM,
    30) PERTRICH, 31) BLASTOCRITHIDIA
  type: boolean
  inputBinding:
    prefix: --translation-table
- id: use_all_table_starts
  doc: false           use all alteratives for a start codon in the genetic table,
    if false - only ATG (AUG)
  type: boolean
  inputBinding:
    prefix: --use-all-table-starts
- id: id_offset
  doc: '0               numeric ids in index file are offset by this value          '
  type: boolean
  inputBinding:
    prefix: --id-offset
- id: add_orf_stop
  doc: 'false           add * at complete start and end                             '
  type: boolean
  inputBinding:
    prefix: --add-orf-stop
- id: start_sens
  doc: '4.000           start sensitivity                                           '
  type: boolean
  inputBinding:
    prefix: --start-sens
- id: sens_steps
  doc: '1               Search steps performed from --start-sense and -s.           '
  type: boolean
  inputBinding:
    prefix: --sens-steps
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- search
