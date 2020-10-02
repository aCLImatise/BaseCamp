class: CommandLineTool
id: uchime.cwl
inputs:
- id: in_input
  doc: "Query sequences in FASTA format.\nIf the --db option is not specificed, uchime\
    \ uses de novo\ndetection. In de novo mode, relative abundance must be given\n\
    by a string /ab=xxx/ somewhere in the label, where xxx is a\nfloating-point number,\
    \ e.g. >F00QGH67HG/ab=1.2/."
  type: File
  inputBinding:
    prefix: --input
- id: in_db
  doc: "Reference database in FASTA format.\nOptional, if not specified uchime uses\
    \ de novo mode.\n***WARNING*** The database is searched ONLY on the plus strand.\n\
    You MUST include reverse-complemented sequences in the database\nif you want both\
    \ strands to be searched."
  type: File
  inputBinding:
    prefix: --db
- id: in_ab_skew
  doc: "Minimum abundance skew. Default 1.9. De novo mode only.\nAbundance skew is:\n\
    min [ abund(parent1), abund(parent2) ] / abund(query)."
  type: long
  inputBinding:
    prefix: --abskew
- id: in_uchi_me_out
  doc: "Output in tabbed format with one record per query sequence.\nFirst field is\
    \ score (h), second field is query label.\nFor details, see manual."
  type: File
  inputBinding:
    prefix: --uchimeout
- id: in_uchi_meal_ns
  doc: "Multiple alignments of query sequences to parents in human-\nreadable format.\
    \ Alignments show columns with differences\nthat support or contradict a chimeric\
    \ model."
  type: File
  inputBinding:
    prefix: --uchimealns
- id: in_minh
  doc: "Mininum score to report chimera. Default 0.3. Values from 0.1\nto 5 might\
    \ be reasonable. Lower values increase sensitivity\nbut may report more false\
    \ positives. If you decrease --xn,\nyou may need to increase --minh, and vice\
    \ versa."
  type: double
  inputBinding:
    prefix: --minh
- id: in_mind_iv
  doc: "Minimum divergence ratio, default 0.5. Div ratio is 100% -\n%identity between\
    \ query sequence and the closest candidate for\nbeing a parent. If you don't care\
    \ about very close chimeras,\nthen you could increase --mindiv to, say, 1.0 or\
    \ 2.0, and\nalso decrease --min h, say to 0.1, to increase sensitivity.\nHow well\
    \ this works will depend on your data. Best is to\ntune parameters on a good benchmark."
  type: long
  inputBinding:
    prefix: --mindiv
- id: in_xn
  doc: "Weight of a no vote, also called the beta parameter. Default 8.0.\nDecreasing\
    \ this weight to around 3 or 4 may give better\nperformance on denoised data."
  type: double
  inputBinding:
    prefix: --xn
- id: in_dn
  doc: "Pseudo-count prior on number of no votes. Default 1.4. Probably\nno good reason\
    \ to change this unless you can retune to a good\nbenchmark for your data. Reasonable\
    \ values are probably in the\nrange from 0.2 to 2."
  type: long
  inputBinding:
    prefix: --dn
- id: in_x_a
  doc: "Weight of an abstain vote. Default 1. So far, results do not\nseem to be very\
    \ sensitive to this parameter, but if you have\na good training set might be worth\
    \ trying. Reasonable values\nmight range from 0.1 to 2."
  type: double
  inputBinding:
    prefix: --xa
- id: in_chunks
  doc: "Number of chunks to extract from the query sequence when searching\nfor parents.\
    \ Default 4."
  type: long
  inputBinding:
    prefix: --chunks
- id: in_min_chunk
  doc: Minimum length of a chunk. Default 64.
  type: long
  inputBinding:
    prefix: --minchunk
- id: in_id_smooth_window
  doc: Length of id smoothing window. Default 32.
  type: long
  inputBinding:
    prefix: --idsmoothwindow
- id: in_min_smooth_id
  doc: "Minimum factional identity over smoothed window of candidate parent.\nDefault\
    \ 0.95."
  type: double
  inputBinding:
    prefix: --minsmoothid
- id: in_maxp
  doc: "Maximum number of candidate parents to consider. Default 2. In tests so\n\
    far, increasing --maxp gives only a very small improvement in sensivity\nbut tends\
    \ to increase the error rate quite a bit."
  type: long
  inputBinding:
    prefix: --maxp
- id: in_maxlen
  doc: "Minimum and maximum sequence length. Defaults 10, 10000.\nApplies to both\
    \ query and reference sequences."
  type: long
  inputBinding:
    prefix: --maxlen
- id: in_ucl
  doc: "Use local-X alignments. Default is global-X. On tests so far, global-X\nis\
    \ always better; this option is retained because it just might work\nwell on some\
    \ future type of data."
  type: boolean
  inputBinding:
    prefix: --ucl
- id: in_query_fract
  doc: "Minimum fraction of the query sequence that must be covered by a local-X\n\
    alignment. Default 0.5. Applies only when --ucl is specified."
  type: double
  inputBinding:
    prefix: --queryfract
- id: in_quiet
  doc: Do not display progress messages on stderr.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_log
  doc: "Write miscellaneous information to the log file. Mostly of interest\nto me\
    \ (the algorithm developer). Use --verbose to get more info."
  type: File
  inputBinding:
    prefix: --log
- id: in_self
  doc: "In reference database mode, exclude a reference sequence if it has\nthe same\
    \ label as the query. This is useful for benchmarking by using\nthe ref db as\
    \ a query to test for false positives."
  type: boolean
  inputBinding:
    prefix: --self
- id: in_ab_sort
  doc: help
  type: string
  inputBinding:
    prefix: --absort
- id: in_abx
  doc: help
  type: double
  inputBinding:
    prefix: --abx
- id: in_all_pairs
  doc: help
  type: string
  inputBinding:
    prefix: --allpairs
- id: in_alpha
  doc: help
  type: string
  inputBinding:
    prefix: --alpha
- id: in_band
  doc: help
  type: string
  inputBinding:
    prefix: --band
- id: in_blast_six_out
  doc: help
  type: long
  inputBinding:
    prefix: --blast6out
- id: in_blast_out
  doc: help
  type: string
  inputBinding:
    prefix: --blastout
- id: in_bump
  doc: help
  type: string
  inputBinding:
    prefix: --bump
- id: in_cc
  doc: help
  type: string
  inputBinding:
    prefix: --cc
- id: in_chain_evalue
  doc: help
  type: double
  inputBinding:
    prefix: --chain_evalue
- id: in_chain_target_fract
  doc: help
  type: double
  inputBinding:
    prefix: --chain_targetfract
- id: in_chain_hits
  doc: help
  type: string
  inputBinding:
    prefix: --chainhits
- id: in_chain_out
  doc: help
  type: string
  inputBinding:
    prefix: --chainout
- id: in_cl_str_two_uc
  doc: help
  type: long
  inputBinding:
    prefix: --clstr2uc
- id: in_clump
  doc: help
  type: string
  inputBinding:
    prefix: --clump
- id: in_clump_two_fast_a
  doc: help
  type: long
  inputBinding:
    prefix: --clump2fasta
- id: in_clump_fast_a
  doc: help
  type: string
  inputBinding:
    prefix: --clumpfasta
- id: in_clump_out
  doc: help
  type: string
  inputBinding:
    prefix: --clumpout
- id: in_cluster
  doc: help
  type: string
  inputBinding:
    prefix: --cluster
- id: in_compiler_info
  doc: 'Write info about compiler types and #defines to stdout.'
  type: boolean
  inputBinding:
    prefix: --compilerinfo
- id: in_compute_kl
  doc: help
  type: string
  inputBinding:
    prefix: --computekl
- id: in_db_step
  doc: help
  type: string
  inputBinding:
    prefix: --dbstep
- id: in_de_rep
  doc: help
  type: boolean
  inputBinding:
    prefix: --derep
- id: in_diff_char
  doc: help
  type: string
  inputBinding:
    prefix: --diffchar
- id: in_doug
  doc: help
  type: string
  inputBinding:
    prefix: --doug
- id: in_drop_pct
  doc: help
  type: string
  inputBinding:
    prefix: --droppct
- id: in_evalue
  doc: help
  type: double
  inputBinding:
    prefix: --evalue
- id: in_evalue_g
  doc: help
  type: double
  inputBinding:
    prefix: --evalue_g
- id: in_exact
  doc: help
  type: boolean
  inputBinding:
    prefix: --exact
- id: in_fast_a_pairs
  doc: help
  type: string
  inputBinding:
    prefix: --fastapairs
- id: in_fast_q_two_fast_a
  doc: help
  type: long
  inputBinding:
    prefix: --fastq2fasta
- id: in_find_orfs
  doc: help
  type: string
  inputBinding:
    prefix: --findorfs
- id: in_frame
  doc: help
  type: long
  inputBinding:
    prefix: --frame
- id: in_fs_penalty
  doc: help
  type: double
  inputBinding:
    prefix: --fspenalty
- id: in_gap_ext
  doc: help
  type: string
  inputBinding:
    prefix: --gapext
- id: in_gap_open
  doc: help
  type: string
  inputBinding:
    prefix: --gapopen
- id: in_get_seqs
  doc: help
  type: string
  inputBinding:
    prefix: --getseqs
- id: in_global
  doc: help
  type: boolean
  inputBinding:
    prefix: --global
- id: in_hash
  doc: help
  type: boolean
  inputBinding:
    prefix: --hash
- id: in_hash_size
  doc: help
  type: string
  inputBinding:
    prefix: --hashsize
- id: in_hire_out
  doc: help
  type: string
  inputBinding:
    prefix: --hireout
- id: in_hsp_alpha
  doc: help
  type: string
  inputBinding:
    prefix: --hspalpha
- id: in_id
  doc: help
  type: double
  inputBinding:
    prefix: --id
- id: in_id_char
  doc: help
  type: string
  inputBinding:
    prefix: --idchar
- id: in_id_def
  doc: help
  type: string
  inputBinding:
    prefix: --iddef
- id: in_id_prefix
  doc: help
  type: string
  inputBinding:
    prefix: --idprefix
- id: in_ids
  doc: help
  type: string
  inputBinding:
    prefix: --ids
- id: in_id_suffix
  doc: help
  type: string
  inputBinding:
    prefix: --idsuffix
- id: in_index_stats
  doc: help
  type: string
  inputBinding:
    prefix: --indexstats
- id: in_k
  doc: help
  type: string
  inputBinding:
    prefix: --k
- id: in_ka_db_size
  doc: help
  type: double
  inputBinding:
    prefix: --ka_dbsize
- id: in_ka_gapped_k
  doc: help
  type: double
  inputBinding:
    prefix: --ka_gapped_k
- id: in_ka_gapped_lambda
  doc: help
  type: double
  inputBinding:
    prefix: --ka_gapped_lambda
- id: in_ka_un_gapped_k
  doc: help
  type: double
  inputBinding:
    prefix: --ka_ungapped_k
- id: in_ka_un_gapped_lambda
  doc: help
  type: double
  inputBinding:
    prefix: --ka_ungapped_lambda
- id: in_labels
  doc: help
  type: string
  inputBinding:
    prefix: --labels
- id: in_l_ext
  doc: help
  type: double
  inputBinding:
    prefix: --lext
- id: in_local
  doc: help
  type: boolean
  inputBinding:
    prefix: --local
- id: in_logo_pts
  doc: Log options.
  type: boolean
  inputBinding:
    prefix: --logopts
- id: in_l_open
  doc: help
  type: double
  inputBinding:
    prefix: --lopen
- id: in_make_index
  doc: help
  type: string
  inputBinding:
    prefix: --makeindex
- id: in_match
  doc: help
  type: double
  inputBinding:
    prefix: --match
- id: in_matrix
  doc: help
  type: string
  inputBinding:
    prefix: --matrix
- id: in_max_two
  doc: help
  type: long
  inputBinding:
    prefix: --max2
- id: in_max_accepts
  doc: help
  type: string
  inputBinding:
    prefix: --maxaccepts
- id: in_max_clump
  doc: help
  type: string
  inputBinding:
    prefix: --maxclump
- id: in_max_ovd
  doc: help
  type: string
  inputBinding:
    prefix: --maxovd
- id: in_max_poly
  doc: help
  type: string
  inputBinding:
    prefix: --maxpoly
- id: in_maxq_gap
  doc: help
  type: string
  inputBinding:
    prefix: --maxqgap
- id: in_max_rejects
  doc: help
  type: string
  inputBinding:
    prefix: --maxrejects
- id: in_max_span_one
  doc: help
  type: long
  inputBinding:
    prefix: --maxspan1
- id: in_max_span_two
  doc: help
  type: long
  inputBinding:
    prefix: --maxspan2
- id: in_max_targets
  doc: help
  type: string
  inputBinding:
    prefix: --maxtargets
- id: in_max_t_gap
  doc: help
  type: string
  inputBinding:
    prefix: --maxtgap
- id: in_mcc
  doc: help
  type: string
  inputBinding:
    prefix: --mcc
- id: in_merge_clumps
  doc: help
  type: string
  inputBinding:
    prefix: --mergeclumps
- id: in_mergesort
  doc: help
  type: string
  inputBinding:
    prefix: --mergesort
- id: in_min_codons
  doc: help
  type: string
  inputBinding:
    prefix: --mincodons
- id: in_min_diffs
  doc: help
  type: string
  inputBinding:
    prefix: --mindiffs
- id: in_minh_sp
  doc: help
  type: string
  inputBinding:
    prefix: --minhsp
- id: in_min_len
  doc: help
  type: string
  inputBinding:
    prefix: --minlen
- id: in_minor_f_cov
  doc: help
  type: string
  inputBinding:
    prefix: --minorfcov
- id: in_min_span_ratio_one
  doc: help
  type: double
  inputBinding:
    prefix: --minspanratio1
- id: in_min_span_ratio_two
  doc: help
  type: double
  inputBinding:
    prefix: --minspanratio2
- id: in_mismatch
  doc: help
  type: double
  inputBinding:
    prefix: --mismatch
- id: in_mkc_test
  doc: help
  type: string
  inputBinding:
    prefix: --mkctest
- id: in_optimal
  doc: help
  type: boolean
  inputBinding:
    prefix: --optimal
- id: in_orf_style
  doc: help
  type: string
  inputBinding:
    prefix: --orfstyle
- id: in_otu_sort
  doc: help
  type: string
  inputBinding:
    prefix: --otusort
- id: in_output
  doc: help
  type: string
  inputBinding:
    prefix: --output
- id: in_pro_bmx
  doc: help
  type: string
  inputBinding:
    prefix: --probmx
- id: in_query
  doc: help
  type: string
  inputBinding:
    prefix: --query
- id: in_query_len
  doc: help
  type: string
  inputBinding:
    prefix: --querylen
- id: in_rand_seed
  doc: help
  type: string
  inputBinding:
    prefix: --randseed
- id: in_realign
  doc: help
  type: boolean
  inputBinding:
    prefix: --realign
- id: in_row_len
  doc: help
  type: string
  inputBinding:
    prefix: --rowlen
- id: in_secs
  doc: help
  type: string
  inputBinding:
    prefix: --secs
- id: in_seeds
  doc: help
  type: string
  inputBinding:
    prefix: --seeds
- id: in_seeds_out
  doc: help
  type: string
  inputBinding:
    prefix: --seedsout
- id: in_seed_tone
  doc: help
  type: double
  inputBinding:
    prefix: --seedt1
- id: in_seed_t_two
  doc: help
  type: double
  inputBinding:
    prefix: --seedt2
- id: in_sim_cl
  doc: help
  type: string
  inputBinding:
    prefix: --simcl
- id: in_sort
  doc: help
  type: string
  inputBinding:
    prefix: --sort
- id: in_sort_uc
  doc: help
  type: string
  inputBinding:
    prefix: --sortuc
- id: in_sparse_dist
  doc: help
  type: string
  inputBinding:
    prefix: --sparsedist
- id: in_sparse_dist_params
  doc: help
  type: string
  inputBinding:
    prefix: --sparsedistparams
- id: in_split
  doc: help
  type: double
  inputBinding:
    prefix: --split
- id: in_ss_penalty
  doc: help
  type: double
  inputBinding:
    prefix: --sspenalty
- id: in_star_align
  doc: help
  type: string
  inputBinding:
    prefix: --staralign
- id: in_step_words
  doc: help
  type: string
  inputBinding:
    prefix: --stepwords
- id: in_strand
  doc: help
  type: string
  inputBinding:
    prefix: --strand
- id: in_target_fract
  doc: help
  type: double
  inputBinding:
    prefix: --targetfract
- id: in_target_len
  doc: help
  type: string
  inputBinding:
    prefix: --targetlen
- id: in_tmpdir
  doc: help
  type: string
  inputBinding:
    prefix: --tmpdir
- id: in_trace_state
  doc: help
  type: string
  inputBinding:
    prefix: --tracestate
- id: in_uc
  doc: help
  type: string
  inputBinding:
    prefix: --uc
- id: in_uc_two_cl_str
  doc: help
  type: long
  inputBinding:
    prefix: --uc2clstr
- id: in_uc_two_fast_a
  doc: help
  type: long
  inputBinding:
    prefix: --uc2fasta
- id: in_uc_two_fast_a_x
  doc: help
  type: long
  inputBinding:
    prefix: --uc2fastax
- id: in_u_chime
  doc: help
  type: string
  inputBinding:
    prefix: --uchime
- id: in_u_hire
  doc: help
  type: string
  inputBinding:
    prefix: --uhire
- id: in_un_gapped
  doc: help
  type: boolean
  inputBinding:
    prefix: --ungapped
- id: in_user_fields
  doc: help
  type: string
  inputBinding:
    prefix: --userfields
- id: in_user_out
  doc: help
  type: string
  inputBinding:
    prefix: --userout
- id: in_user_sort
  doc: help
  type: boolean
  inputBinding:
    prefix: --usersort
- id: in_us_link
  doc: help
  type: string
  inputBinding:
    prefix: --uslink
- id: in_u_tax
  doc: help
  type: string
  inputBinding:
    prefix: --utax
- id: in_w
  doc: help
  type: string
  inputBinding:
    prefix: --w
- id: in_weak_evalue
  doc: help
  type: double
  inputBinding:
    prefix: --weak_evalue
- id: in_weak_id
  doc: help
  type: double
  inputBinding:
    prefix: --weak_id
- id: in_x_drop_g
  doc: help
  type: double
  inputBinding:
    prefix: --xdrop_g
- id: in_x_drop_nw
  doc: help
  type: double
  inputBinding:
    prefix: --xdrop_nw
- id: in_x_drop_u
  doc: help
  type: double
  inputBinding:
    prefix: --xdrop_u
- id: in_x_drop_ug
  doc: help
  type: double
  inputBinding:
    prefix: --xdrop_ug
- id: in_x_frame
  doc: help
  type: string
  inputBinding:
    prefix: --xframe
- id: in_xl_at
  doc: help
  type: boolean
  inputBinding:
    prefix: --xlat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- uchime
