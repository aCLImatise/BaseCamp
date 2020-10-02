class: CommandLineTool
id: vsearch.cwl
inputs:
- id: in_bzip_two_decompress
  doc: decompress input with bzip2 (required if pipe)
  type: boolean
  inputBinding:
    prefix: --bzip2_decompress
- id: in_fast_a_width
  doc: width of FASTA seq lines, 0 for no wrap (80)
  type: long
  inputBinding:
    prefix: --fasta_width
- id: in_gzip_decompress
  doc: decompress input with gzip (required if pipe)
  type: boolean
  inputBinding:
    prefix: --gzip_decompress
- id: in_log
  doc: write messages, timing and memory info to file
  type: File
  inputBinding:
    prefix: --log
- id: in_max_seq_length
  doc: maximum sequence length (50000)
  type: long
  inputBinding:
    prefix: --maxseqlength
- id: in_min_seq_length
  doc: 'min seq length (clust/derep/search: 32, other:1)'
  type: long
  inputBinding:
    prefix: --minseqlength
- id: in_no_progress
  doc: do not show progress indicator
  type: boolean
  inputBinding:
    prefix: --no_progress
- id: in_not_run_c_labels
  doc: do not truncate labels at first space
  type: boolean
  inputBinding:
    prefix: --notrunclabels
- id: in_quiet
  doc: output just warnings and fatal errors to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: number of threads to use, zero for all cores (0)
  type: long
  inputBinding:
    prefix: --threads
- id: in_u_chime_de_novo
  doc: detect chimeras de novo
  type: File
  inputBinding:
    prefix: --uchime_denovo
- id: in_u_chime_two_de_novo
  doc: detect chimeras de novo in denoised amplicons
  type: File
  inputBinding:
    prefix: --uchime2_denovo
- id: in_u_chime_three_de_novo
  doc: detect chimeras de novo in denoised amplicons
  type: File
  inputBinding:
    prefix: --uchime3_denovo
- id: in_u_chime_ref
  doc: detect chimeras using a reference database
  type: File
  inputBinding:
    prefix: --uchime_ref
- id: in_dn
  doc: "'no' vote pseudo-count (1.4)"
  type: double
  inputBinding:
    prefix: --dn
- id: in_min_diffs
  doc: minimum number of differences in segment (3) *
  type: long
  inputBinding:
    prefix: --mindiffs
- id: in_mind_iv
  doc: minimum divergence from closest parent (0.8) *
  type: double
  inputBinding:
    prefix: --mindiv
- id: in_minh
  doc: minimum score (0.28) * ignored in uchime2/3
  type: double
  inputBinding:
    prefix: --minh
- id: in_size_in
  doc: propagate abundance annotation from input
  type: boolean
  inputBinding:
    prefix: --sizein
- id: in_self
  doc: exclude identical labels for --uchime_ref
  type: boolean
  inputBinding:
    prefix: --self
- id: in_self_id
  doc: exclude identical sequences for --uchime_ref
  type: boolean
  inputBinding:
    prefix: --selfid
- id: in_xn
  doc: "'no' vote weight (8.0)"
  type: double
  inputBinding:
    prefix: --xn
- id: in_borderline
  doc: output borderline chimeric sequences to file
  type: File
  inputBinding:
    prefix: --borderline
- id: in_chimeras
  doc: output chimeric sequences to file
  type: File
  inputBinding:
    prefix: --chimeras
- id: in_fast_a_score
  doc: include chimera score in fasta output
  type: boolean
  inputBinding:
    prefix: --fasta_score
- id: in_non_chimeras
  doc: output non-chimeric sequences to file
  type: File
  inputBinding:
    prefix: --nonchimeras
- id: in_relabel
  doc: relabel nonchimeras with this prefix string
  type: string
  inputBinding:
    prefix: --relabel
- id: in_relabel_keep
  doc: keep the old label after the new when relabelling
  type: boolean
  inputBinding:
    prefix: --relabel_keep
- id: in_relabel_md_five
  doc: relabel with md5 digest of normalized sequence
  type: boolean
  inputBinding:
    prefix: --relabel_md5
- id: in_relabel_self
  doc: relabel with the sequence itself as label
  type: boolean
  inputBinding:
    prefix: --relabel_self
- id: in_relabel_sha_one
  doc: relabel with sha1 digest of normalized sequence
  type: boolean
  inputBinding:
    prefix: --relabel_sha1
- id: in_size_out
  doc: include abundance information when relabelling
  type: boolean
  inputBinding:
    prefix: --sizeout
- id: in_uchi_meal_ns
  doc: output chimera alignments to file
  type: File
  inputBinding:
    prefix: --uchimealns
- id: in_uchi_me_out
  doc: output to chimera info to tab-separated file
  type: File
  inputBinding:
    prefix: --uchimeout
- id: in_uchi_me_out_five
  doc: make output compatible with uchime version 5
  type: boolean
  inputBinding:
    prefix: --uchimeout5
- id: in_xsize
  doc: strip abundance information in output
  type: boolean
  inputBinding:
    prefix: --xsize
- id: in_cluster_fast
  doc: cluster sequences after sorting by length
  type: File
  inputBinding:
    prefix: --cluster_fast
- id: in_cluster_size
  doc: cluster sequences after sorting by abundance
  type: File
  inputBinding:
    prefix: --cluster_size
- id: in_cluster_small_mem
  doc: cluster already sorted sequences (see -usersort)
  type: File
  inputBinding:
    prefix: --cluster_smallmem
- id: in_cluster_u_noise
  doc: denoise Illumina amplicon reads
  type: File
  inputBinding:
    prefix: --cluster_unoise
- id: in_cons_truncate
  doc: do not ignore terminal gaps in MSA for consensus
  type: boolean
  inputBinding:
    prefix: --cons_truncate
- id: in_id
  doc: 'reject if identity lower, accepted values: 0-1.0'
  type: double
  inputBinding:
    prefix: --id
- id: in_id_def
  doc: id definition, 0-4=CD-HIT,all,int,MBL,BLAST (2)
  type: long
  inputBinding:
    prefix: --iddef
- id: in_q_mask
  doc: '|dust|soft      mask seqs with dust, soft or no method (dust)'
  type: string
  inputBinding:
    prefix: --qmask
- id: in_strand
  doc: '|both          cluster using plus or both strands (plus)'
  type: string
  inputBinding:
    prefix: --strand
- id: in_user_sort
  doc: indicate sequences not pre-sorted by length
  type: boolean
  inputBinding:
    prefix: --usersort
- id: in_minsize
  doc: minimum abundance (unoise only) (8)
  type: long
  inputBinding:
    prefix: --minsize
- id: in_u_noise_alpha
  doc: alpha parameter (unoise only) (2.0)
  type: double
  inputBinding:
    prefix: --unoise_alpha
- id: in_centroids
  doc: output centroid sequences to FASTA file
  type: File
  inputBinding:
    prefix: --centroids
- id: in_cluster_out_id
  doc: add cluster id info to consout and profile files
  type: boolean
  inputBinding:
    prefix: --clusterout_id
- id: in_cluster_out_sort
  doc: order msaout, consout, profile by decr abundance
  type: boolean
  inputBinding:
    prefix: --clusterout_sort
- id: in_clusters
  doc: output each cluster to a separate FASTA file
  type: File
  inputBinding:
    prefix: --clusters
- id: in_cons_out
  doc: output cluster consensus sequences to FASTA file
  type: File
  inputBinding:
    prefix: --consout
- id: in_mo_thur_shared_out
  doc: filename for OTU table output in mothur format
  type: File
  inputBinding:
    prefix: --mothur_shared_out
- id: in_msa_out
  doc: output multiple seq. alignments to FASTA file
  type: File
  inputBinding:
    prefix: --msaout
- id: in_o_tut_about
  doc: filename for OTU table output in classic format
  type: File
  inputBinding:
    prefix: --otutabout
- id: in_profile
  doc: output sequence profile of each cluster to file
  type: File
  inputBinding:
    prefix: --profile
- id: in_size_order
  doc: sort accepted centroids by abundance, AGC
  type: boolean
  inputBinding:
    prefix: --sizeorder
- id: in_uc
  doc: specify filename for UCLUST-like output
  type: File
  inputBinding:
    prefix: --uc
- id: in_sff_convert
  doc: convert given SFF file to FASTQ format
  type: File
  inputBinding:
    prefix: --sff_convert
- id: in_fast_q_ascii_out
  doc: FASTQ output quality score ASCII base char (33)
  type: long
  inputBinding:
    prefix: --fastq_asciiout
- id: in_fast_q_qmax_out
  doc: maximum base quality value for FASTQ output (41)
  type: long
  inputBinding:
    prefix: --fastq_qmaxout
- id: in_fast_q_q_min_out
  doc: minimum base quality value for FASTQ output (0)
  type: long
  inputBinding:
    prefix: --fastq_qminout
- id: in_de_rep_full_length
  doc: dereplicate sequences in the given FASTA file
  type: File
  inputBinding:
    prefix: --derep_fulllength
- id: in_de_rep_id
  doc: dereplicate using both identifiers and sequences
  type: File
  inputBinding:
    prefix: --derep_id
- id: in_de_rep_prefix
  doc: dereplicate sequences in file based on prefixes
  type: File
  inputBinding:
    prefix: --derep_prefix
- id: in_re_replicate
  doc: rereplicate sequences in the given FASTA file
  type: File
  inputBinding:
    prefix: --rereplicate
- id: in_min_unique_size
  doc: minimum abundance for output from dereplication
  type: long
  inputBinding:
    prefix: --minuniquesize
- id: in_top_n
  doc: output only n most abundant sequences after derep
  type: long
  inputBinding:
    prefix: --topn
- id: in_fast_q_convert
  doc: convert between FASTQ file formats
  type: File
  inputBinding:
    prefix: --fastq_convert
- id: in_fast_q_qmax
  doc: maximum base quality value for FASTQ input (41)
  type: long
  inputBinding:
    prefix: --fastq_qmax
- id: in_fast_q_qm_in
  doc: minimum base quality value for FASTQ input (0)
  type: long
  inputBinding:
    prefix: --fastq_qmin
- id: in_fast_q_chars
  doc: analyse FASTQ file for version and quality range
  type: File
  inputBinding:
    prefix: --fastq_chars
- id: in_fast_q_stats
  doc: report statistics on FASTQ file
  type: File
  inputBinding:
    prefix: --fastq_stats
- id: in_fast_q_ee_stats
  doc: quality score and expected error statistics
  type: File
  inputBinding:
    prefix: --fastq_eestats
- id: in_fast_q_ee_stats_two
  doc: expected error and length cutoff statistics
  type: File
  inputBinding:
    prefix: --fastq_eestats2
- id: in_fast_q_ascii
  doc: FASTQ input quality score ASCII base char (33)
  type: long
  inputBinding:
    prefix: --fastq_ascii
- id: in_length_cutoffs
  doc: ',INT,INT fastq_eestats2 length (min,max,incr) (50,*,50)'
  type: long
  inputBinding:
    prefix: --length_cutoffs
- id: in_output_file_fastqeestats
  doc: output file for fastq_eestats(2) statistics
  type: File
  inputBinding:
    prefix: --output
- id: in_fast_x_mask
  doc: mask sequences in the given FASTA or FASTQ file
  type: File
  inputBinding:
    prefix: --fastx_mask
- id: in_hard_mask
  doc: mask by replacing with N instead of lower case
  type: boolean
  inputBinding:
    prefix: --hardmask
- id: in_max_unmasked_pct
  doc: max unmasked % of sequences to keep (100.0)
  type: boolean
  inputBinding:
    prefix: --max_unmasked_pct
- id: in_min_unmasked_pct
  doc: min unmasked % of sequences to keep (0.0)
  type: boolean
  inputBinding:
    prefix: --min_unmasked_pct
- id: in_fast_q_out
  doc: output to specified FASTQ file
  type: File
  inputBinding:
    prefix: --fastqout
- id: in_mask_fast_a
  doc: mask sequences in the given FASTA file
  type: File
  inputBinding:
    prefix: --maskfasta
- id: in_fast_q_join
  doc: join paired-end reads into one sequence with gap
  type: File
  inputBinding:
    prefix: --fastq_join
- id: in_join_pad_gap
  doc: sequence string used for padding (NNNNNNNN)
  type: string
  inputBinding:
    prefix: --join_padgap
- id: in_join_pad_gap_q
  doc: quality string used for padding (IIIIIIII)
  type: string
  inputBinding:
    prefix: --join_padgapq
- id: in_fast_q_merge_pairs
  doc: merge paired-end reads into one sequence
  type: File
  inputBinding:
    prefix: --fastq_mergepairs
- id: in_fast_q_max_diff_pct
  doc: maximum percentage diff. bases in overlap (100.0)
  type: double
  inputBinding:
    prefix: --fastq_maxdiffpct
- id: in_fast_q_max_diffs
  doc: maximum number of different bases in overlap (10)
  type: long
  inputBinding:
    prefix: --fastq_maxdiffs
- id: in_fast_q_max_ee
  doc: maximum expected error value for merged sequence
  type: string
  inputBinding:
    prefix: --fastq_maxee
- id: in_fast_q_max_merge_len
  doc: maximum length of entire merged sequence
  type: boolean
  inputBinding:
    prefix: --fastq_maxmergelen
- id: in_fast_q_max_ns
  doc: maximum number of N's
  type: long
  inputBinding:
    prefix: --fastq_maxns
- id: in_fast_q_min_len
  doc: minimum input read length after truncation (1)
  type: long
  inputBinding:
    prefix: --fastq_minlen
- id: in_fast_q_min_merge_len
  doc: minimum length of entire merged sequence
  type: boolean
  inputBinding:
    prefix: --fastq_minmergelen
- id: in_fast_q_mi_nov_len
  doc: minimum length of overlap between reads (10)
  type: boolean
  inputBinding:
    prefix: --fastq_minovlen
- id: in_fast_q_no_stagger
  doc: disallow merging of staggered reads (default)
  type: boolean
  inputBinding:
    prefix: --fastq_nostagger
- id: in_fast_q_trunc_qual
  doc: base quality value for truncation
  type: long
  inputBinding:
    prefix: --fastq_truncqual
- id: in_fast_a_out
  doc: FASTA output filename for merged sequences
  type: File
  inputBinding:
    prefix: --fastaout
- id: in_fast_a_out_not_merged_fwd
  doc: FASTA filename for non-merged forward sequences
  type: File
  inputBinding:
    prefix: --fastaout_notmerged_fwd
- id: in_fast_a_out_not_merged_rev
  doc: FASTA filename for non-merged reverse sequences
  type: File
  inputBinding:
    prefix: --fastaout_notmerged_rev
- id: in_fast_q_ee_out
  doc: include expected errors (ee) in FASTQ output
  type: boolean
  inputBinding:
    prefix: --fastq_eeout
- id: in_fast_q_out_not_merged_fwd
  doc: FASTQ filename for non-merged forward sequences
  type: File
  inputBinding:
    prefix: --fastqout_notmerged_fwd
- id: in_fast_q_out_not_merged_rev
  doc: FASTQ filename for non-merged reverse sequences
  type: File
  inputBinding:
    prefix: --fastqout_notmerged_rev
- id: in_label_suffix
  doc: suffix to append to label of merged sequences
  type: string
  inputBinding:
    prefix: --label_suffix
- id: in_xee
  doc: remove expected errors (ee) info from output
  type: boolean
  inputBinding:
    prefix: --xee
- id: in_all_pairs_global
  doc: perform global alignment of all sequence pairs
  type: File
  inputBinding:
    prefix: --allpairs_global
- id: in_aln_out
  doc: filename for human-readable alignment output
  type: File
  inputBinding:
    prefix: --alnout
- id: in_accept_all
  doc: output all pairwise alignments
  type: boolean
  inputBinding:
    prefix: --acceptall
- id: in_cut
  doc: filename of FASTA formatted input sequences
  type: File
  inputBinding:
    prefix: --cut
- id: in_fast_a_out_rev
  doc: FASTA filename for fragments on reverse strand
  type: File
  inputBinding:
    prefix: --fastaout_rev
- id: in_fast_a_out_discarded
  doc: FASTA filename for non-matching sequences
  type: File
  inputBinding:
    prefix: --fastaout_discarded
- id: in_fast_a_out_discarded_rev
  doc: FASTA filename for non-matching, reverse compl.
  type: File
  inputBinding:
    prefix: --fastaout_discarded_rev
- id: in_fast_x_rev_comp
  doc: reverse-complement seqs in FASTA or FASTQ file
  type: File
  inputBinding:
    prefix: --fastx_revcomp
- id: in_search_exact
  doc: filename of queries for exact match search
  type: File
  inputBinding:
    prefix: --search_exact
- id: in_u_search_global
  doc: filename of queries for global alignment search
  type: File
  inputBinding:
    prefix: --usearch_global
- id: in_full_dp
  doc: full dynamic programming alignment (always on)
  type: boolean
  inputBinding:
    prefix: --fulldp
- id: in_gap_ext
  doc: penalties for gap extension (2I/1E)
  type: long
  inputBinding:
    prefix: --gapext
- id: in_gap_open
  doc: penalties for gap opening (20I/2E)
  type: long
  inputBinding:
    prefix: --gapopen
- id: in_id_prefix
  doc: reject if first n nucleotides do not match
  type: long
  inputBinding:
    prefix: --idprefix
- id: in_id_suffix
  doc: reject if last n nucleotides do not match
  type: long
  inputBinding:
    prefix: --idsuffix
- id: in_left_just
  doc: reject if terminal gaps at alignment left end
  type: boolean
  inputBinding:
    prefix: --leftjust
- id: in_match
  doc: score for match (2)
  type: long
  inputBinding:
    prefix: --match
- id: in_max_accepts
  doc: number of hits to accept and show per strand (1)
  type: long
  inputBinding:
    prefix: --maxaccepts
- id: in_max_diffs
  doc: reject if more substitutions or indels
  type: long
  inputBinding:
    prefix: --maxdiffs
- id: in_max_gaps
  doc: reject if more indels
  type: long
  inputBinding:
    prefix: --maxgaps
- id: in_max_hits
  doc: maximum number of hits to show (unlimited)
  type: long
  inputBinding:
    prefix: --maxhits
- id: in_max_id
  doc: reject if identity higher
  type: string
  inputBinding:
    prefix: --maxid
- id: in_maxq_size
  doc: reject if query abundance larger
  type: long
  inputBinding:
    prefix: --maxqsize
- id: in_max_qt
  doc: reject if query/target length ratio higher
  type: long
  inputBinding:
    prefix: --maxqt
- id: in_max_rejects
  doc: number of non-matching hits to consider (32)
  type: long
  inputBinding:
    prefix: --maxrejects
- id: in_maxsize_ratio
  doc: reject if query/target abundance ratio higher
  type: string
  inputBinding:
    prefix: --maxsizeratio
- id: in_max_sl
  doc: reject if shorter/longer length ratio higher
  type: long
  inputBinding:
    prefix: --maxsl
- id: in_max_subs
  doc: reject if more substitutions
  type: long
  inputBinding:
    prefix: --maxsubs
- id: in_mid
  doc: reject if percent identity lower, ignoring gaps
  type: string
  inputBinding:
    prefix: --mid
- id: in_min_cols
  doc: reject if alignment length shorter
  type: long
  inputBinding:
    prefix: --mincols
- id: in_min_qt
  doc: reject if query/target length ratio lower
  type: long
  inputBinding:
    prefix: --minqt
- id: in_minsize_ratio
  doc: reject if query/target abundance ratio lower
  type: string
  inputBinding:
    prefix: --minsizeratio
- id: in_mins_l
  doc: reject if shorter/longer length ratio lower
  type: long
  inputBinding:
    prefix: --minsl
- id: in_mint_size
  doc: reject if target abundance lower
  type: long
  inputBinding:
    prefix: --mintsize
- id: in_min_word_matches
  doc: minimum number of word matches required (12)
  type: long
  inputBinding:
    prefix: --minwordmatches
- id: in_mismatch
  doc: score for mismatch (-4)
  type: long
  inputBinding:
    prefix: --mismatch
- id: in_pattern
  doc: option is ignored
  type: string
  inputBinding:
    prefix: --pattern
- id: in_query_cov
  doc: reject if fraction of query seq. aligned lower
  type: string
  inputBinding:
    prefix: --query_cov
- id: in_right_just
  doc: reject if terminal gaps at alignment right end
  type: boolean
  inputBinding:
    prefix: --rightjust
- id: in_slots
  doc: option is ignored
  type: long
  inputBinding:
    prefix: --slots
- id: in_target_cov
  doc: reject if fraction of target seq. aligned lower
  type: string
  inputBinding:
    prefix: --target_cov
- id: in_weak_id
  doc: include aligned hits with >= id; continue search
  type: string
  inputBinding:
    prefix: --weak_id
- id: in_word_length
  doc: length of words for database index 3-15 (8)
  type: long
  inputBinding:
    prefix: --wordlength
- id: in_biom_out
  doc: filename for OTU table output in biom 1.0 format
  type: File
  inputBinding:
    prefix: --biomout
- id: in_blast_six_out
  doc: filename for blast-like tab-separated output
  type: File
  inputBinding:
    prefix: --blast6out
- id: in_db_matched
  doc: FASTA file for matching database sequences
  type: File
  inputBinding:
    prefix: --dbmatched
- id: in_db_not_matched
  doc: FASTA file for non-matching database sequences
  type: File
  inputBinding:
    prefix: --dbnotmatched
- id: in_fast_a_pairs
  doc: FASTA file with pairs of query and target
  type: File
  inputBinding:
    prefix: --fastapairs
- id: in_matched
  doc: FASTA file for matching query sequences
  type: File
  inputBinding:
    prefix: --matched
- id: in_not_matched
  doc: FASTA file for non-matching query sequences
  type: File
  inputBinding:
    prefix: --notmatched
- id: in_output_no_hits
  doc: output non-matching queries to output files
  type: boolean
  inputBinding:
    prefix: --output_no_hits
- id: in_row_len
  doc: width of alignment lines in alnout output (64)
  type: long
  inputBinding:
    prefix: --rowlen
- id: in_sam_header
  doc: include a header in the SAM output file
  type: File
  inputBinding:
    prefix: --samheader
- id: in_sam_out
  doc: filename for SAM format output
  type: File
  inputBinding:
    prefix: --samout
- id: in_top_hits_only
  doc: output only hits with identity equal to the best
  type: boolean
  inputBinding:
    prefix: --top_hits_only
- id: in_uc_all_hits
  doc: show all, not just top hit with uc output
  type: boolean
  inputBinding:
    prefix: --uc_allhits
- id: in_user_fields
  doc: fields to output in userout file
  type: File
  inputBinding:
    prefix: --userfields
- id: in_user_out
  doc: filename for user-defined tab-separated output
  type: File
  inputBinding:
    prefix: --userout
- id: in_shuffle
  doc: shuffle order of sequences in FASTA file randomly
  type: File
  inputBinding:
    prefix: --shuffle
- id: in_sort_by_length
  doc: sort sequences by length in given FASTA file
  type: File
  inputBinding:
    prefix: --sortbylength
- id: in_sort_by_size
  doc: abundance sort sequences in given FASTA file
  type: File
  inputBinding:
    prefix: --sortbysize
- id: in_rand_seed
  doc: seed for PRNG, zero to use random data source (0)
  type: long
  inputBinding:
    prefix: --randseed
- id: in_fast_x_subsample
  doc: subsample sequences from given FASTA/FASTQ file
  type: File
  inputBinding:
    prefix: --fastx_subsample
- id: in_sample_pct
  doc: sampling percentage between 0.0 and 100.0
  type: double
  inputBinding:
    prefix: --sample_pct
- id: in_sample_size
  doc: sampling size
  type: long
  inputBinding:
    prefix: --sample_size
- id: in_fast_q_out_discarded
  doc: output non-subsampled sequences to FASTQ file
  type: File
  inputBinding:
    prefix: --fastqout_discarded
- id: in_sin_tax
  doc: classify sequences in given FASTA/FASTQ file
  type: File
  inputBinding:
    prefix: --sintax
- id: in_sin_tax_cut_off
  doc: confidence value cutoff level (0.0)
  type: double
  inputBinding:
    prefix: --sintax_cutoff
- id: in_fast_x_filter
  doc: trim and filter sequences in FASTA/FASTQ file
  type: File
  inputBinding:
    prefix: --fastx_filter
- id: in_fast_q_filter
  doc: trim and filter sequences in FASTQ file
  type: File
  inputBinding:
    prefix: --fastq_filter
- id: in_reverse
  doc: FASTQ file with other end of paired-end reads
  type: File
  inputBinding:
    prefix: --reverse
- id: in_fast_q_max_ee_rate
  doc: discard if expected error rate is higher
  type: string
  inputBinding:
    prefix: --fastq_maxee_rate
- id: in_fast_q_maxlen
  doc: discard if length of sequence is longer
  type: long
  inputBinding:
    prefix: --fastq_maxlen
- id: in_fast_q_strip_left
  doc: delete given number of bases from the 5' end
  type: long
  inputBinding:
    prefix: --fastq_stripleft
- id: in_fast_q_strip_right
  doc: delete given number of bases from the 3' end
  type: long
  inputBinding:
    prefix: --fastq_stripright
- id: in_fast_q_trunc_ee
  doc: truncate to given maximum expected error
  type: string
  inputBinding:
    prefix: --fastq_truncee
- id: in_fast_q_trunc_len
  doc: truncate to given length (discard if shorter)
  type: long
  inputBinding:
    prefix: --fastq_trunclen
- id: in_fast_q_trunc_len_keep
  doc: truncate to given length (keep if shorter)
  type: long
  inputBinding:
    prefix: --fastq_trunclen_keep
- id: in_maxsize
  doc: discard if abundance of sequence is above
  type: long
  inputBinding:
    prefix: --maxsize
- id: in_fast_q_out_discarded_rev
  doc: FASTQ filename for discarded reverse sequences
  type: File
  inputBinding:
    prefix: --fastqout_discarded_rev
- id: in_fast_q_out_rev
  doc: FASTQ filename for passed reverse sequences
  type: File
  inputBinding:
    prefix: --fastqout_rev
- id: in_make_udb_u_search
  doc: make UDB file from given FASTA file
  type: File
  inputBinding:
    prefix: --makeudb_usearch
- id: in_udb_two_fast_a
  doc: output FASTA file from given UDB file
  type: File
  inputBinding:
    prefix: --udb2fasta
- id: in_udb_info
  doc: show information about UDB file
  type: File
  inputBinding:
    prefix: --udbinfo
- id: in_udb_stats
  doc: report statistics about indexed words in UDB file
  type: File
  inputBinding:
    prefix: --udbstats
- id: in__db_filename_reference
  doc: --db FILENAME               reference database for --uchime_ref
  type: string
  inputBinding:
    position: 0
- id: in__abskew_real
  doc: --abskew REAL               minimum abundance ratio (2.0, 16.0 for uchime3)
  type: string
  inputBinding:
    position: 1
- id: in__sffclip_clip
  doc: --sff_clip                  clip ends of sequences as indicated in file (no)
  type: string
  inputBinding:
    position: 0
- id: in__fastqout_filename_output
  doc: --fastqout FILENAME         output converted sequences to given FASTQ file
  type: string
  inputBinding:
    position: 1
- id: in__maxuniquesize_abundance
  doc: --maxuniquesize INT         maximum abundance for output from dereplication
  type: string
  inputBinding:
    position: 0
- id: in__output_filename_output_fasta
  doc: --output FILENAME           output FASTA file
  type: string
  inputBinding:
    position: 1
- id: in_var_198
  doc: --fastq_ascii INT           FASTQ input quality score ASCII base char (33)
  type: string
  inputBinding:
    position: 0
- id: in__fastqout_filename_fastq
  doc: --fastqout FILENAME         FASTQ output filename for converted sequences
  type: string
  inputBinding:
    position: 1
- id: in__log_filename
  doc: --log FILENAME              output file for fastq_stats statistics
  type: string
  inputBinding:
    position: 1
- id: in_var_201
  doc: --fastq_ascii INT           FASTQ input quality score ASCII base char (33)
  type: string
  inputBinding:
    position: 0
- id: in__fastaout_filename_output
  doc: --fastaout FILENAME         output to specified FASTA file
  type: string
  inputBinding:
    position: 1
- id: in__hardmask_mask
  doc: --hardmask                  mask by replacing with N instead of lower case
  type: string
  inputBinding:
    position: 0
- id: in_var_204
  doc: --output FILENAME           output to specified FASTA file
  type: string
  inputBinding:
    position: 1
- id: in_var_205
  doc: --reverse FILENAME          specify FASTQ file with reverse reads
  type: string
  inputBinding:
    position: 0
- id: in_for_joined_sequences
  doc: --fastaout FILENAME         FASTA output filename for joined sequences
  type: string
  inputBinding:
    position: 1
- id: in_var_207
  doc: --reverse FILENAME          specify FASTQ file with reverse reads
  type: string
  inputBinding:
    position: 0
- id: in__fastqallowmergestagger_allow
  doc: --fastq_allowmergestagger   allow merging of staggered reads
  type: string
  inputBinding:
    position: 1
- id: in__eetabbedout_filename
  doc: --eetabbedout FILENAME      output error statistics to specified file
  type: string
  inputBinding:
    position: 2
- id: in__cutpattern_string
  doc: --cut_pattern STRING        pattern to match with ^ and _ at cut sites
  type: string
  inputBinding:
    position: 0
- id: in__fastaout_filename_fasta
  doc: --fastaout FILENAME         FASTA filename for fragments on forward strand
  type: string
  inputBinding:
    position: 1
- id: in_var_212
  doc: --fastq_ascii INT           FASTQ input quality score ASCII base char (33)
  type: string
  inputBinding:
    position: 0
- id: in__fastaout_fasta_filename
  doc: --fastaout FILENAME         FASTA output filename
  type: string
  inputBinding:
    position: 1
- id: in__db_filename_name
  doc: --db FILENAME               name of UDB or FASTA database for search
  type: string
  inputBinding:
    position: 0
- id: in_var_215
  doc: --dbmask none|dust|soft     mask db with dust, soft or no method (dust)
  type: string
  inputBinding:
    position: 1
- id: in__alnout_filename
  doc: --alnout FILENAME           filename for human-readable alignment output
  type: string
  inputBinding:
    position: 2
- id: in__maxsize_int
  doc: --maxsize INT               maximum abundance for sortbysize
  type: string
  inputBinding:
    position: 0
- id: in_var_218
  doc: --output FILENAME           output to specified FASTA file
  type: string
  inputBinding:
    position: 1
- id: in_var_219
  doc: --fastq_ascii INT           FASTQ input quality score ASCII base char (33)
  type: string
  inputBinding:
    position: 0
- id: in__fastaout_sequences
  doc: --fastaout FILENAME         output subsampled sequences to FASTA file
  type: string
  inputBinding:
    position: 1
- id: in__db_filename_taxonomic
  doc: --db FILENAME               taxonomic reference db in given FASTA or UDB file
  type: string
  inputBinding:
    position: 0
- id: in__tabbedout_filename
  doc: --tabbedout FILENAME        write results to given tab-delimited file
  type: string
  inputBinding:
    position: 1
- id: in_var_223
  doc: --fastq_ascii INT           FASTQ input quality score ASCII base char (33)
  type: string
  inputBinding:
    position: 0
- id: in__eeout_include
  doc: --eeout                     include expected errors in output
  type: string
  inputBinding:
    position: 1
- id: in_var_225
  doc: --dbmask none|dust|soft     mask db with dust, soft or no method (dust)
  type: string
  inputBinding:
    position: 0
- id: in__output_filename_udb
  doc: --output FILENAME           UDB or FASTA output file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_borderline
  doc: output borderline chimeric sequences to file
  type: File
  outputBinding:
    glob: $(inputs.in_borderline)
- id: out_chimeras
  doc: output chimeric sequences to file
  type: File
  outputBinding:
    glob: $(inputs.in_chimeras)
- id: out_non_chimeras
  doc: output non-chimeric sequences to file
  type: File
  outputBinding:
    glob: $(inputs.in_non_chimeras)
- id: out_uchi_meal_ns
  doc: output chimera alignments to file
  type: File
  outputBinding:
    glob: $(inputs.in_uchi_meal_ns)
- id: out_uchi_me_out
  doc: output to chimera info to tab-separated file
  type: File
  outputBinding:
    glob: $(inputs.in_uchi_me_out)
- id: out_centroids
  doc: output centroid sequences to FASTA file
  type: File
  outputBinding:
    glob: $(inputs.in_centroids)
- id: out_clusters
  doc: output each cluster to a separate FASTA file
  type: File
  outputBinding:
    glob: $(inputs.in_clusters)
- id: out_cons_out
  doc: output cluster consensus sequences to FASTA file
  type: File
  outputBinding:
    glob: $(inputs.in_cons_out)
- id: out_mo_thur_shared_out
  doc: filename for OTU table output in mothur format
  type: File
  outputBinding:
    glob: $(inputs.in_mo_thur_shared_out)
- id: out_msa_out
  doc: output multiple seq. alignments to FASTA file
  type: File
  outputBinding:
    glob: $(inputs.in_msa_out)
- id: out_o_tut_about
  doc: filename for OTU table output in classic format
  type: File
  outputBinding:
    glob: $(inputs.in_o_tut_about)
- id: out_profile
  doc: output sequence profile of each cluster to file
  type: File
  outputBinding:
    glob: $(inputs.in_profile)
- id: out_uc
  doc: specify filename for UCLUST-like output
  type: File
  outputBinding:
    glob: $(inputs.in_uc)
- id: out_output_file_fastqeestats
  doc: output file for fastq_eestats(2) statistics
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_fastqeestats)
- id: out_fast_q_out
  doc: output to specified FASTQ file
  type: File
  outputBinding:
    glob: $(inputs.in_fast_q_out)
- id: out_fast_a_out
  doc: FASTA output filename for merged sequences
  type: File
  outputBinding:
    glob: $(inputs.in_fast_a_out)
- id: out_aln_out
  doc: filename for human-readable alignment output
  type: File
  outputBinding:
    glob: $(inputs.in_aln_out)
- id: out_biom_out
  doc: filename for OTU table output in biom 1.0 format
  type: File
  outputBinding:
    glob: $(inputs.in_biom_out)
- id: out_blast_six_out
  doc: filename for blast-like tab-separated output
  type: File
  outputBinding:
    glob: $(inputs.in_blast_six_out)
- id: out_sam_header
  doc: include a header in the SAM output file
  type: File
  outputBinding:
    glob: $(inputs.in_sam_header)
- id: out_sam_out
  doc: filename for SAM format output
  type: File
  outputBinding:
    glob: $(inputs.in_sam_out)
- id: out_user_fields
  doc: fields to output in userout file
  type: File
  outputBinding:
    glob: $(inputs.in_user_fields)
- id: out_user_out
  doc: filename for user-defined tab-separated output
  type: File
  outputBinding:
    glob: $(inputs.in_user_out)
- id: out_fast_q_out_discarded
  doc: output non-subsampled sequences to FASTQ file
  type: File
  outputBinding:
    glob: $(inputs.in_fast_q_out_discarded)
- id: out_udb_two_fast_a
  doc: output FASTA file from given UDB file
  type: File
  outputBinding:
    glob: $(inputs.in_udb_two_fast_a)
cwlVersion: v1.1
baseCommand:
- vsearch
