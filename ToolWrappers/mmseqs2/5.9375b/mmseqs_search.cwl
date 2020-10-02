class: CommandLineTool
id: mmseqs_search.cwl
inputs:
- id: in_comp_bias_corr
  doc: 1               correct for locally biased amino acid composition [0,1]
  type: boolean
  inputBinding:
    prefix: --comp-bias-corr
- id: in_add_self_matches
  doc: false           artificially add entries of queries with themselves (for clustering)
  type: boolean
  inputBinding:
    prefix: --add-self-matches
- id: in_sensitivity_faster_fast
  doc: '5.700           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]'
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
- id: in_spaced_km_er_mode
  doc: '1               0: use consecutive positions a k-mers; 1: use spaced k-mers'
  type: boolean
  inputBinding:
    prefix: --spaced-kmer-mode
- id: in_false_add_convert
  doc: false           add backtrace string (convert to alignments with mmseqs convertalis
    utility)
  type: boolean
  inputBinding:
    prefix: -a
- id: in_alignment_mode
  doc: '2               How to compute the alignment: 0: automatic; 1: only score
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
- id: in_list_matches_fraction
  doc: 0.000           list matches above this fraction of aligned (covered) residues
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
- id: in_mask_profile
  doc: 1               mask query sequence of profile using tantan [0,1]
  type: boolean
  inputBinding:
    prefix: --mask-profile
- id: in_e_profile
  doc: 0.001           includes sequences matches with < e-value thr. into the profile
    [>=0.0]
  type: boolean
  inputBinding:
    prefix: --e-profile
- id: in_wg
  doc: false           use global sequence weighting for profile calculation
  type: boolean
  inputBinding:
    prefix: --wg
- id: in_filter_msa
  doc: '1               filter msa: 0: do not filter, 1: filter'
  type: boolean
  inputBinding:
    prefix: --filter-msa
- id: in_max_seq_id
  doc: 0.900           reduce redundancy of output MSA using max. pairwise sequence
    identity [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --max-seq-id
- id: in_qid
  doc: 0.000           reduce diversity of output MSAs using min.seq. identity with
    query sequences [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --qid
- id: in_qsc
  doc: -20.000         reduce diversity of output MSAs using min. score per aligned
    residue with query sequences [-50.0,100.0]
  type: boolean
  inputBinding:
    prefix: --qsc
- id: in_cov
  doc: 0.000           filter output MSAs using min. fraction of query residues covered
    by matched sequences [0.0,1.0]
  type: boolean
  inputBinding:
    prefix: --cov
- id: in_diff
  doc: 1000            filter MSAs by selecting most diverse set of sequences, keeping
    at least this many seqs in each MSA block of length 50
  type: boolean
  inputBinding:
    prefix: --diff
- id: in_num_iterations
  doc: 1               Search iterations
  type: boolean
  inputBinding:
    prefix: --num-iterations
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
- id: in_min_length
  doc: 30              minimum codon number in open reading frames
  type: boolean
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: 32734           maximum codon number in open reading frames
  type: boolean
  inputBinding:
    prefix: --max-length
- id: in_max_gaps
  doc: 2147483647      maximum number of codons with gaps or unknown residues before
    an open reading frame is rejected
  type: boolean
  inputBinding:
    prefix: --max-gaps
- id: in_contig_start_mode
  doc: '2               Contig start can be 0: incomplete, 1: complete, 2: both'
  type: boolean
  inputBinding:
    prefix: --contig-start-mode
- id: in_contig_end_mode
  doc: '2               Contig end can be 0: incomplete, 1: complete, 2: both'
  type: boolean
  inputBinding:
    prefix: --contig-end-mode
- id: in_orf_start_mode
  doc: '0               Orf fragment can be 0: from start to stop, 1: from any to
    stop, 2: from last encountered start to stop (no start in the middle)'
  type: boolean
  inputBinding:
    prefix: --orf-start-mode
- id: in_forward_frames
  doc: 1,2,3           comma-seperated list of ORF frames on the forward strand to
    be extracted
  type: boolean
  inputBinding:
    prefix: --forward-frames
- id: in_reverse_frames
  doc: 1,2,3           comma-seperated list of ORF frames on the reverse strand to
    be extracted
  type: boolean
  inputBinding:
    prefix: --reverse-frames
- id: in_translation_table
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
- id: in_use_all_table_starts
  doc: false           use all alteratives for a start codon in the genetic table,
    if false - only ATG (AUG)
  type: boolean
  inputBinding:
    prefix: --use-all-table-starts
- id: in_id_offset
  doc: 0               numeric ids in index file are offset by this value
  type: boolean
  inputBinding:
    prefix: --id-offset
- id: in_add_orf_stop
  doc: false           add * at complete start and end
  type: boolean
  inputBinding:
    prefix: --add-orf-stop
- id: in_start_sens
  doc: 4.000           start sensitivity
  type: boolean
  inputBinding:
    prefix: --start-sens
- id: in_sens_steps
  doc: 1               Search steps performed from --start-sense and -s.
  type: boolean
  inputBinding:
    prefix: --sens-steps
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
  doc: 300             maximum result sequences per query (this parameter affects
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
- search
