version 1.0

task Hisat2AlignS {
  input {
    Boolean? query_input_files_fastq
    Boolean? q_seq
    Boolean? query_input_files_multifasta
    Boolean? query_input_files_raw
    Boolean? m_m_r
    Int? s_slash_skip
    Int? us_lash_up_to
    Int? five_slash_trim_five
    Int? three_slash_trim_three
    Boolean? phred_three_three
    Boolean? phred_six_four
    Boolean? int_quals
    Boolean? fast
    Boolean? sensitive
    Boolean? very_sensitive
    Int? bowtie_two_dp
    String? n_ceil
    Boolean? ignore_quals
    Boolean? no_fw
    Boolean? norc
    Boolean? no_repeat_index
    Int? pen_can_splice
    Int? pen_non_can_splice
    String? pen_can_intron_len
    String? pen_non_can_intron_len
    Int? min_intron_len
    Int? max_intron_len
    File? known_splice_site_in_file
    File? novel_splice_site_outfile
    File? novel_splice_site_in_file
    Boolean? no_temp_splice_site
    Boolean? no_spliced_alignment
    String? rna_strand_ness
    Boolean? tmo
    Boolean? dta
    Boolean? dta_cufflinks
    Boolean? avoid_pseudogene
    Boolean? no_template_len_adjustment
    Int? mp
    Int? sp
    Boolean? no_soft_clip
    Int? np
    Int? rdg
    Int? rfg
    String? score_min
    Int? it_searches_mean
    Int? max_seeds
    Boolean? a_slash_all
    Boolean? repeat
    Int? i_slash_mini_ns
    Int? x_slash_max_ins
    Boolean? fr_slash_rf_slash_ff
    Boolean? no_mixed
    Boolean? no_discordant
    Boolean? t_slash_time
    File? summary_file
    Boolean? new_summary
    Boolean? quiet
    File? met_file
    Boolean? met_stderr
    Int? met
    Boolean? no_head
    Boolean? no_sq
    String? rg_id
    String? rg
    Boolean? omit_sec_seq
    Int? oslash_off_rate
    Int? p_slash_threads
    Boolean? reorder
    Boolean? mm
    Boolean? qc_filter
    Int? seed
    String? non_deterministic
    Boolean? remove_chr_name
    Boolean? add_chr_name
    Boolean? h_slash_help
    String his_at_two_align
  }
  command <<<
    hisat2-align-s \
      ~{his_at_two_align} \
      ~{true="-q" false="" query_input_files_fastq} \
      ~{true="--qseq" false="" q_seq} \
      ~{true="-f" false="" query_input_files_multifasta} \
      ~{true="-r" false="" query_input_files_raw} \
      ~{true="-c" false="" m_m_r} \
      ~{if defined(s_slash_skip) then ("-s/--skip " +  '"' + s_slash_skip + '"') else ""} \
      ~{if defined(us_lash_up_to) then ("-u/--upto " +  '"' + us_lash_up_to + '"') else ""} \
      ~{if defined(five_slash_trim_five) then ("-5/--trim5 " +  '"' + five_slash_trim_five + '"') else ""} \
      ~{if defined(three_slash_trim_three) then ("-3/--trim3 " +  '"' + three_slash_trim_three + '"') else ""} \
      ~{true="--phred33" false="" phred_three_three} \
      ~{true="--phred64" false="" phred_six_four} \
      ~{true="--int-quals" false="" int_quals} \
      ~{true="--fast" false="" fast} \
      ~{true="--sensitive" false="" sensitive} \
      ~{true="--very-sensitive" false="" very_sensitive} \
      ~{if defined(bowtie_two_dp) then ("--bowtie2-dp " +  '"' + bowtie_two_dp + '"') else ""} \
      ~{if defined(n_ceil) then ("--n-ceil " +  '"' + n_ceil + '"') else ""} \
      ~{true="--ignore-quals" false="" ignore_quals} \
      ~{true="--nofw" false="" no_fw} \
      ~{true="--norc" false="" norc} \
      ~{true="--no-repeat-index" false="" no_repeat_index} \
      ~{if defined(pen_can_splice) then ("--pen-cansplice " +  '"' + pen_can_splice + '"') else ""} \
      ~{if defined(pen_non_can_splice) then ("--pen-noncansplice " +  '"' + pen_non_can_splice + '"') else ""} \
      ~{if defined(pen_can_intron_len) then ("--pen-canintronlen " +  '"' + pen_can_intron_len + '"') else ""} \
      ~{if defined(pen_non_can_intron_len) then ("--pen-noncanintronlen " +  '"' + pen_non_can_intron_len + '"') else ""} \
      ~{if defined(min_intron_len) then ("--min-intronlen " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(max_intron_len) then ("--max-intronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{if defined(known_splice_site_in_file) then ("--known-splicesite-infile " +  '"' + known_splice_site_in_file + '"') else ""} \
      ~{if defined(novel_splice_site_outfile) then ("--novel-splicesite-outfile " +  '"' + novel_splice_site_outfile + '"') else ""} \
      ~{if defined(novel_splice_site_in_file) then ("--novel-splicesite-infile " +  '"' + novel_splice_site_in_file + '"') else ""} \
      ~{true="--no-temp-splicesite" false="" no_temp_splice_site} \
      ~{true="--no-spliced-alignment" false="" no_spliced_alignment} \
      ~{if defined(rna_strand_ness) then ("--rna-strandness " +  '"' + rna_strand_ness + '"') else ""} \
      ~{true="--tmo" false="" tmo} \
      ~{true="--dta" false="" dta} \
      ~{true="--dta-cufflinks" false="" dta_cufflinks} \
      ~{true="--avoid-pseudogene" false="" avoid_pseudogene} \
      ~{true="--no-templatelen-adjustment" false="" no_template_len_adjustment} \
      ~{if defined(mp) then ("--mp " +  '"' + mp + '"') else ""} \
      ~{if defined(sp) then ("--sp " +  '"' + sp + '"') else ""} \
      ~{true="--no-softclip" false="" no_soft_clip} \
      ~{if defined(np) then ("--np " +  '"' + np + '"') else ""} \
      ~{if defined(rdg) then ("--rdg " +  '"' + rdg + '"') else ""} \
      ~{if defined(rfg) then ("--rfg " +  '"' + rfg + '"') else ""} \
      ~{if defined(score_min) then ("--score-min " +  '"' + score_min + '"') else ""} \
      ~{if defined(it_searches_mean) then ("-k " +  '"' + it_searches_mean + '"') else ""} \
      ~{if defined(max_seeds) then ("--max-seeds " +  '"' + max_seeds + '"') else ""} \
      ~{true="-a/--all" false="" a_slash_all} \
      ~{true="--repeat" false="" repeat} \
      ~{if defined(i_slash_mini_ns) then ("-I/--minins " +  '"' + i_slash_mini_ns + '"') else ""} \
      ~{if defined(x_slash_max_ins) then ("-X/--maxins " +  '"' + x_slash_max_ins + '"') else ""} \
      ~{true="--fr/--rf/--ff" false="" fr_slash_rf_slash_ff} \
      ~{true="--no-mixed" false="" no_mixed} \
      ~{true="--no-discordant" false="" no_discordant} \
      ~{true="-t/--time" false="" t_slash_time} \
      ~{if defined(summary_file) then ("--summary-file " +  '"' + summary_file + '"') else ""} \
      ~{true="--new-summary" false="" new_summary} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(met_file) then ("--met-file " +  '"' + met_file + '"') else ""} \
      ~{true="--met-stderr" false="" met_stderr} \
      ~{if defined(met) then ("--met " +  '"' + met + '"') else ""} \
      ~{true="--no-head" false="" no_head} \
      ~{true="--no-sq" false="" no_sq} \
      ~{if defined(rg_id) then ("--rg-id " +  '"' + rg_id + '"') else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{true="--omit-sec-seq" false="" omit_sec_seq} \
      ~{if defined(oslash_off_rate) then ("-o/--offrate " +  '"' + oslash_off_rate + '"') else ""} \
      ~{if defined(p_slash_threads) then ("-p/--threads " +  '"' + p_slash_threads + '"') else ""} \
      ~{true="--reorder" false="" reorder} \
      ~{true="--mm" false="" mm} \
      ~{true="--qc-filter" false="" qc_filter} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(non_deterministic) then ("--non-deterministic " +  '"' + non_deterministic + '"') else ""} \
      ~{true="--remove-chrname" false="" remove_chr_name} \
      ~{true="--add-chrname" false="" add_chr_name} \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    query_input_files_fastq: "query input files are FASTQ .fq/.fastq (default)"
    q_seq: "query input files are in Illumina's qseq format"
    query_input_files_multifasta: "query input files are (multi-)FASTA .fa/.mfa"
    query_input_files_raw: "query input files are raw one-sequence-per-line"
    m_m_r: "<m1>, <m2>, <r> are sequences themselves, not files"
    s_slash_skip: "skip the first <int> reads/pairs in the input (none)"
    us_lash_up_to: "stop after first <int> reads/pairs (no limit)"
    five_slash_trim_five: "trim <int> bases from 5'/left end of reads (0)"
    three_slash_trim_three: "trim <int> bases from 3'/right end of reads (0)"
    phred_three_three: "qualities are Phred+33 (default)"
    phred_six_four: "qualities are Phred+64"
    int_quals: "qualities encoded as space-delimited integers"
    fast: "--no-repeat-index"
    sensitive: "--bowtie2-dp 1 -k 30 --score-min L,0,-0.5"
    very_sensitive: "--bowtie2-dp 2 -k 50 --score-min L,0,-1"
    bowtie_two_dp: "use Bowtie2's dynamic programming alignment algorithm (0) - 0: no dynamic programming, 1: conditional dynamic programming, and 2: unconditional dynamic programming (slowest)"
    n_ceil: "func for max # non-A/C/G/Ts permitted in aln (L,0,0.15)"
    ignore_quals: "treat all quality values as 30 on Phred scale (off)"
    no_fw: "do not align forward (original) version of read (off)"
    norc: "do not align reverse-complement version of read (off)"
    no_repeat_index: "do not use repeat index"
    pen_can_splice: "penalty for a canonical splice site (0)"
    pen_non_can_splice: "penalty for a non-canonical splice site (12)"
    pen_can_intron_len: "penalty for long introns (G,-8,1) with canonical splice sites"
    pen_non_can_intron_len: "penalty for long introns (G,-8,1) with noncanonical splice sites"
    min_intron_len: "minimum intron length (20)"
    max_intron_len: "maximum intron length (500000)"
    known_splice_site_in_file: "provide a list of known splice sites"
    novel_splice_site_outfile: "report a list of splice sites"
    novel_splice_site_in_file: "provide a list of novel splice sites"
    no_temp_splice_site: "disable the use of splice sites found"
    no_spliced_alignment: "disable spliced alignment"
    rna_strand_ness: "specify strand-specific information (unstranded)"
    tmo: "reports only those alignments within known transcriptome"
    dta: "reports alignments tailored for transcript assemblers"
    dta_cufflinks: "reports alignments tailored specifically for cufflinks"
    avoid_pseudogene: "tries to avoid aligning reads to pseudogenes (experimental option)"
    no_template_len_adjustment: "disables template length adjustment for RNA-seq reads"
    mp: ",<int>   max and min penalties for mismatch; lower qual = lower penalty <6,2>"
    sp: ",<int>   max and min penalties for soft-clipping; lower qual = lower penalty <2,1>"
    no_soft_clip: "no soft-clipping"
    np: "penalty for non-A/C/G/Ts in read/ref (1)"
    rdg: ",<int>  read gap open, extend penalties (5,3)"
    rfg: ",<int>  reference gap open, extend penalties (5,3)"
    score_min: "min acceptable alignment score w/r/t read length (L,0.0,-0.2)"
    it_searches_mean: "It searches for at most <int> distinct, primary alignments for each read. Primary alignments mean  alignments whose alignment score is equal to or higher than any other alignments. The search terminates  when it cannot find more distinct valid alignments, or when it finds <int>, whichever happens first.  The alignment score for a paired-end alignment equals the sum of the alignment scores of  the individual mates. Each reported read or pair alignment beyond the first has the SAM ‘secondary’ bit  (which equals 256) set in its FLAGS field. For reads that have more than <int> distinct,  valid alignments, hisat2 does not guarantee that the <int> alignments reported are the best possible  in terms of alignment score. Default: 5 (linear index) or 10 (graph index). Note: HISAT2 is not designed with large values for -k in mind, and when aligning reads to long,  repetitive genomes, large -k could make alignment much slower."
    max_seeds: "HISAT2, like other aligners, uses seed-and-extend approaches. HISAT2 tries to extend seeds to  full-length alignments. In HISAT2, --max-seeds is used to control the maximum number of seeds that  will be extended. For DNA-read alignment (--no-spliced-alignment), HISAT2 extends up to these many seeds and skips the rest of the seeds. For RNA-read alignment, HISAT2 skips extending seeds and reports  no alignments if the number of seeds is larger than the number specified with the option,  to be compatible with previous versions of HISAT2. Large values for --max-seeds may improve alignment  sensitivity, but HISAT2 is not designed with large values for --max-seeds in mind, and when aligning  reads to long, repetitive genomes, large --max-seeds could make alignment much slower.  The default value is the maximum of 5 and the value that comes with -k times 2."
    a_slash_all: "HISAT2 reports all alignments it can find. Using the option is equivalent to using both --max-seeds  and -k with the maximum value that a 64-bit signed integer can represent (9,223,372,036,854,775,807)."
    repeat: "report alignments to repeat sequences directly"
    i_slash_mini_ns: "minimum fragment length (0), only valid with --no-spliced-alignment"
    x_slash_max_ins: "maximum fragment length (500), only valid with --no-spliced-alignment"
    fr_slash_rf_slash_ff: "-1, -2 mates align fw/rev, rev/fw, fw/fw (--fr)"
    no_mixed: "suppress unpaired alignments for paired reads"
    no_discordant: "suppress discordant alignments for paired reads"
    t_slash_time: "print wall-clock time taken by search phases"
    summary_file: "print alignment summary to this file."
    new_summary: "print alignment summary in a new style, which is more machine-friendly."
    quiet: "print nothing to stderr except serious errors"
    met_file: "send metrics to file at <path> (off)"
    met_stderr: "send metrics to stderr (off)"
    met: "report internal counters & metrics every <int> secs (1)"
    no_head: "suppress header lines, i.e. lines starting with @"
    no_sq: "suppress @SQ header lines"
    rg_id: "set read group id, reflected in @RG line and RG:Z: opt field"
    rg: "add <text> (\"lab:value\") to @RG line of SAM header. Note: @RG line only printed when --rg-id is set."
    omit_sec_seq: "put '*' in SEQ and QUAL fields for secondary alignments."
    oslash_off_rate: "override offrate of index; must be >= index's offrate"
    p_slash_threads: "number of alignment threads to launch (1)"
    reorder: "force SAM output order to match order of input reads"
    mm: "use memory-mapped I/O for index; many 'hisat2's can share"
    qc_filter: "filter out reads that are bad according to QSEQ filter"
    seed: "seed for random number generator (0)"
    non_deterministic: "rand. gen. arbitrarily instead of using read attributes"
    remove_chr_name: "remove 'chr' from reference names in alignment"
    add_chr_name: "add 'chr' to reference names in alignment "
    h_slash_help: "print this usage message"
    his_at_two_align: ""
  }
}