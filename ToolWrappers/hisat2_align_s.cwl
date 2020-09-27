class: CommandLineTool
id: hisat2_align_s.cwl
inputs:
- id: in_query_input_files_fastq
  doc: query input files are FASTQ .fq/.fastq (default)
  type: boolean
  inputBinding:
    prefix: -q
- id: in_q_seq
  doc: query input files are in Illumina's qseq format
  type: boolean
  inputBinding:
    prefix: --qseq
- id: in_query_input_files_multifasta
  doc: query input files are (multi-)FASTA .fa/.mfa
  type: boolean
  inputBinding:
    prefix: -f
- id: in_query_input_files_raw
  doc: query input files are raw one-sequence-per-line
  type: boolean
  inputBinding:
    prefix: -r
- id: in_m_m_r
  doc: <m1>, <m2>, <r> are sequences themselves, not files
  type: boolean
  inputBinding:
    prefix: -c
- id: in_s_slash_skip
  doc: skip the first <int> reads/pairs in the input (none)
  type: long
  inputBinding:
    prefix: -s/--skip
- id: in_us_lash_up_to
  doc: stop after first <int> reads/pairs (no limit)
  type: long
  inputBinding:
    prefix: -u/--upto
- id: in_five_slash_trim_five
  doc: trim <int> bases from 5'/left end of reads (0)
  type: long
  inputBinding:
    prefix: -5/--trim5
- id: in_three_slash_trim_three
  doc: trim <int> bases from 3'/right end of reads (0)
  type: long
  inputBinding:
    prefix: -3/--trim3
- id: in_phred_three_three
  doc: qualities are Phred+33 (default)
  type: boolean
  inputBinding:
    prefix: --phred33
- id: in_phred_six_four
  doc: qualities are Phred+64
  type: boolean
  inputBinding:
    prefix: --phred64
- id: in_int_quals
  doc: qualities encoded as space-delimited integers
  type: boolean
  inputBinding:
    prefix: --int-quals
- id: in_fast
  doc: --no-repeat-index
  type: boolean
  inputBinding:
    prefix: --fast
- id: in_sensitive
  doc: --bowtie2-dp 1 -k 30 --score-min L,0,-0.5
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: in_very_sensitive
  doc: --bowtie2-dp 2 -k 50 --score-min L,0,-1
  type: boolean
  inputBinding:
    prefix: --very-sensitive
- id: in_bowtie_two_dp
  doc: "use Bowtie2's dynamic programming alignment algorithm (0) - 0: no dynamic\
    \ programming, 1: conditional dynamic programming, and 2: unconditional dynamic\
    \ programming (slowest)"
  type: long
  inputBinding:
    prefix: --bowtie2-dp
- id: in_n_ceil
  doc: 'func for max # non-A/C/G/Ts permitted in aln (L,0,0.15)'
  type: long
  inputBinding:
    prefix: --n-ceil
- id: in_ignore_quals
  doc: treat all quality values as 30 on Phred scale (off)
  type: boolean
  inputBinding:
    prefix: --ignore-quals
- id: in_no_fw
  doc: do not align forward (original) version of read (off)
  type: boolean
  inputBinding:
    prefix: --nofw
- id: in_norc
  doc: do not align reverse-complement version of read (off)
  type: boolean
  inputBinding:
    prefix: --norc
- id: in_no_repeat_index
  doc: do not use repeat index
  type: boolean
  inputBinding:
    prefix: --no-repeat-index
- id: in_pen_can_splice
  doc: penalty for a canonical splice site (0)
  type: long
  inputBinding:
    prefix: --pen-cansplice
- id: in_pen_non_can_splice
  doc: penalty for a non-canonical splice site (12)
  type: long
  inputBinding:
    prefix: --pen-noncansplice
- id: in_pen_can_intron_len
  doc: penalty for long introns (G,-8,1) with canonical splice sites
  type: long
  inputBinding:
    prefix: --pen-canintronlen
- id: in_pen_non_can_intron_len
  doc: penalty for long introns (G,-8,1) with noncanonical splice sites
  type: long
  inputBinding:
    prefix: --pen-noncanintronlen
- id: in_min_intron_len
  doc: minimum intron length (20)
  type: long
  inputBinding:
    prefix: --min-intronlen
- id: in_max_intron_len
  doc: maximum intron length (500000)
  type: long
  inputBinding:
    prefix: --max-intronlen
- id: in_known_splice_site_in_file
  doc: provide a list of known splice sites
  type: File
  inputBinding:
    prefix: --known-splicesite-infile
- id: in_novel_splice_site_outfile
  doc: report a list of splice sites
  type: File
  inputBinding:
    prefix: --novel-splicesite-outfile
- id: in_novel_splice_site_in_file
  doc: provide a list of novel splice sites
  type: File
  inputBinding:
    prefix: --novel-splicesite-infile
- id: in_no_temp_splice_site
  doc: disable the use of splice sites found
  type: boolean
  inputBinding:
    prefix: --no-temp-splicesite
- id: in_no_spliced_alignment
  doc: disable spliced alignment
  type: boolean
  inputBinding:
    prefix: --no-spliced-alignment
- id: in_rna_strand_ness
  doc: specify strand-specific information (unstranded)
  type: string
  inputBinding:
    prefix: --rna-strandness
- id: in_tmo
  doc: reports only those alignments within known transcriptome
  type: boolean
  inputBinding:
    prefix: --tmo
- id: in_dta
  doc: reports alignments tailored for transcript assemblers
  type: boolean
  inputBinding:
    prefix: --dta
- id: in_dta_cufflinks
  doc: reports alignments tailored specifically for cufflinks
  type: boolean
  inputBinding:
    prefix: --dta-cufflinks
- id: in_avoid_pseudogene
  doc: tries to avoid aligning reads to pseudogenes (experimental option)
  type: boolean
  inputBinding:
    prefix: --avoid-pseudogene
- id: in_no_template_len_adjustment
  doc: disables template length adjustment for RNA-seq reads
  type: boolean
  inputBinding:
    prefix: --no-templatelen-adjustment
- id: in_mp
  doc: ',<int>   max and min penalties for mismatch; lower qual = lower penalty <6,2>'
  type: long
  inputBinding:
    prefix: --mp
- id: in_sp
  doc: ',<int>   max and min penalties for soft-clipping; lower qual = lower penalty
    <2,1>'
  type: long
  inputBinding:
    prefix: --sp
- id: in_no_soft_clip
  doc: no soft-clipping
  type: boolean
  inputBinding:
    prefix: --no-softclip
- id: in_np
  doc: penalty for non-A/C/G/Ts in read/ref (1)
  type: long
  inputBinding:
    prefix: --np
- id: in_rdg
  doc: ',<int>  read gap open, extend penalties (5,3)'
  type: long
  inputBinding:
    prefix: --rdg
- id: in_rfg
  doc: ',<int>  reference gap open, extend penalties (5,3)'
  type: long
  inputBinding:
    prefix: --rfg
- id: in_score_min
  doc: "min acceptable alignment score w/r/t read length\n(L,0.0,-0.2)"
  type: long
  inputBinding:
    prefix: --score-min
- id: in_it_searches_find
  doc: "It searches for at most <int> distinct, primary alignments for each read.\
    \ Primary alignments mean\nalignments whose alignment score is equal to or higher\
    \ than any other alignments. The search terminates\nwhen it cannot find more distinct\
    \ valid alignments, or when it finds <int>, whichever happens first.\nThe alignment\
    \ score for a paired-end alignment equals the sum of the alignment scores of\n\
    the individual mates. Each reported read or pair alignment beyond the first has\
    \ the SAM ‘secondary’ bit\n(which equals 256) set in its FLAGS field. For reads\
    \ that have more than <int> distinct,\nvalid alignments, hisat2 does not guarantee\
    \ that the <int> alignments reported are the best possible\nin terms of alignment\
    \ score. Default: 5 (linear index) or 10 (graph index).\nNote: HISAT2 is not designed\
    \ with large values for -k in mind, and when aligning reads to long,\nrepetitive\
    \ genomes, large -k could make alignment much slower."
  type: long
  inputBinding:
    prefix: -k
- id: in_max_seeds
  doc: "HISAT2, like other aligners, uses seed-and-extend approaches. HISAT2 tries\
    \ to extend seeds to\nfull-length alignments. In HISAT2, --max-seeds is used to\
    \ control the maximum number of seeds that\nwill be extended. For DNA-read alignment\
    \ (--no-spliced-alignment), HISAT2 extends up to these many seeds\nand skips the\
    \ rest of the seeds. For RNA-read alignment, HISAT2 skips extending seeds and\
    \ reports\nno alignments if the number of seeds is larger than the number specified\
    \ with the option,\nto be compatible with previous versions of HISAT2. Large values\
    \ for --max-seeds may improve alignment\nsensitivity, but HISAT2 is not designed\
    \ with large values for --max-seeds in mind, and when aligning\nreads to long,\
    \ repetitive genomes, large --max-seeds could make alignment much slower.\nThe\
    \ default value is the maximum of 5 and the value that comes with -k times 2."
  type: long
  inputBinding:
    prefix: --max-seeds
- id: in_a_slash_all
  doc: "HISAT2 reports all alignments it can find. Using the option is equivalent\
    \ to using both --max-seeds\nand -k with the maximum value that a 64-bit signed\
    \ integer can represent (9,223,372,036,854,775,807)."
  type: boolean
  inputBinding:
    prefix: -a/--all
- id: in_repeat
  doc: report alignments to repeat sequences directly
  type: boolean
  inputBinding:
    prefix: --repeat
- id: in_i_slash_mini_ns
  doc: minimum fragment length (0), only valid with --no-spliced-alignment
  type: long
  inputBinding:
    prefix: -I/--minins
- id: in_x_slash_max_ins
  doc: maximum fragment length (500), only valid with --no-spliced-alignment
  type: long
  inputBinding:
    prefix: -X/--maxins
- id: in_fr_slash_rf_slash_ff
  doc: -1, -2 mates align fw/rev, rev/fw, fw/fw (--fr)
  type: boolean
  inputBinding:
    prefix: --fr/--rf/--ff
- id: in_no_mixed
  doc: suppress unpaired alignments for paired reads
  type: boolean
  inputBinding:
    prefix: --no-mixed
- id: in_no_discordant
  doc: suppress discordant alignments for paired reads
  type: boolean
  inputBinding:
    prefix: --no-discordant
- id: in_t_slash_time
  doc: print wall-clock time taken by search phases
  type: boolean
  inputBinding:
    prefix: -t/--time
- id: in_summary_file
  doc: print alignment summary to this file.
  type: File
  inputBinding:
    prefix: --summary-file
- id: in_new_summary
  doc: print alignment summary in a new style, which is more machine-friendly.
  type: boolean
  inputBinding:
    prefix: --new-summary
- id: in_quiet
  doc: print nothing to stderr except serious errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_met_file
  doc: send metrics to file at <path> (off)
  type: File
  inputBinding:
    prefix: --met-file
- id: in_met_stderr
  doc: send metrics to stderr (off)
  type: boolean
  inputBinding:
    prefix: --met-stderr
- id: in_met
  doc: report internal counters & metrics every <int> secs (1)
  type: long
  inputBinding:
    prefix: --met
- id: in_no_head
  doc: suppress header lines, i.e. lines starting with @
  type: boolean
  inputBinding:
    prefix: --no-head
- id: in_no_sq
  doc: suppress @SQ header lines
  type: boolean
  inputBinding:
    prefix: --no-sq
- id: in_rg_id
  doc: 'set read group id, reflected in @RG line and RG:Z: opt field'
  type: string
  inputBinding:
    prefix: --rg-id
- id: in_rg
  doc: "add <text> (\"lab:value\") to @RG line of SAM header.\nNote: @RG line only\
    \ printed when --rg-id is set."
  type: string
  inputBinding:
    prefix: --rg
- id: in_omit_sec_seq
  doc: put '*' in SEQ and QUAL fields for secondary alignments.
  type: boolean
  inputBinding:
    prefix: --omit-sec-seq
- id: in_oslash_off_rate
  doc: override offrate of index; must be >= index's offrate
  type: long
  inputBinding:
    prefix: -o/--offrate
- id: in_p_slash_threads
  doc: number of alignment threads to launch (1)
  type: long
  inputBinding:
    prefix: -p/--threads
- id: in_reorder
  doc: force SAM output order to match order of input reads
  type: boolean
  inputBinding:
    prefix: --reorder
- id: in_mm
  doc: use memory-mapped I/O for index; many 'hisat2's can share
  type: boolean
  inputBinding:
    prefix: --mm
- id: in_qc_filter
  doc: filter out reads that are bad according to QSEQ filter
  type: boolean
  inputBinding:
    prefix: --qc-filter
- id: in_seed
  doc: seed for random number generator (0)
  type: long
  inputBinding:
    prefix: --seed
- id: in_non_deterministic
  doc: rand. gen. arbitrarily instead of using read attributes
  type: string
  inputBinding:
    prefix: --non-deterministic
- id: in_remove_chr_name
  doc: remove 'chr' from reference names in alignment
  type: boolean
  inputBinding:
    prefix: --remove-chrname
- id: in_add_chr_name
  doc: add 'chr' to reference names in alignment
  type: boolean
  inputBinding:
    prefix: --add-chrname
- id: in_h_slash_help
  doc: print this usage message
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_his_at_two_align
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_ht_two_idx
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_m_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_m_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_var_80
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_81
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_specified
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_many
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_times_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_e_dot_gdot
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_92
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_unpaired
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisat2-align-s
