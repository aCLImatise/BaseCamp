version 1.0

task Bowtie2alignl {
  input {
    Boolean? query_input_files_fastq
    Boolean? tab_five
    Boolean? tab_six
    Boolean? q_seq
    Boolean? query_input_files_multifasta
    Boolean? query_input_files_raw
    Int? intiint_query_input
    Boolean? m_m_r
    Int? s_slash_skip
    Int? us_lash_up_to
    Int? five_slash_trim_five
    Int? three_slash_trim_three
    Boolean? trim_to
    Boolean? phred_three_three
    Boolean? phred_six_four
    Boolean? int_quals
    Int? max_mismatches_seed
    Int? length_seed_substrings
    Float? interval_seed_substrings
    Int? n_ceil
    Int? d_pad
    Int? g_bar
    Boolean? ignore_quals
    Boolean? no_fw
    Boolean? norc
    Boolean? no_one_mm_up_front
    Boolean? end_to_end
    Int? ma
    Int? mp
    Int? np
    Int? rdg
    Int? rfg
    Int? score_min
    Int? give_extending_failed
    Int? reads_repetitive_seeds
    Int? i_slash_mini_ns
    Int? x_slash_max_ins
    Boolean? fr_slash_rf_slash_ff
    Boolean? no_mixed
    Boolean? no_discordant
    Boolean? dovetail
    Boolean? no_contain
    Boolean? no_overlap
    Int? align_paired_reads
    Boolean? preserve_tags
    Boolean? t_slash_time
    Boolean? quiet
    File? met_file
    Boolean? met_stderr
    Int? met
    Boolean? no_unal
    Boolean? no_head
    Boolean? no_sq
    String? rg_id
    String? rg
    Boolean? omit_sec_seq
    String? sam_no_qname_trunc
    Boolean? xeq
    String? soft_clipped_unmapped_tlen
    Int? p_slash_threads
    Boolean? reorder
    Boolean? mm
    Boolean? qc_filter
    Int? seed
    String? non_deterministic
    Boolean? h_slash_help
    String note
    String var_67
    Int bowtie_two_align
    Int bt_two_idx
    String var_70
    Int m_one
    Int m_two
    String var_73
    String var_74
    String specified
    File file
    String files
    String index
    String many
    String are
    File filename
    String for
    String times_dot
    String with
    String e_dot_gdot
    String var_86
    String interleaved
    String prefix
    String unaligned
    String unpaired
    String var_91
    String var_output
    String paired_end
    String fast_q_slash_fast_a
    String sorted
    String by
    String read
  }
  command <<<
    bowtie2_align_l \
      ~{note} \
      ~{var_67} \
      ~{bowtie_two_align} \
      ~{bt_two_idx} \
      ~{var_70} \
      ~{m_one} \
      ~{m_two} \
      ~{var_73} \
      ~{var_74} \
      ~{specified} \
      ~{file} \
      ~{files} \
      ~{index} \
      ~{many} \
      ~{are} \
      ~{filename} \
      ~{for} \
      ~{times_dot} \
      ~{with} \
      ~{e_dot_gdot} \
      ~{var_86} \
      ~{interleaved} \
      ~{prefix} \
      ~{unaligned} \
      ~{unpaired} \
      ~{var_91} \
      ~{var_output} \
      ~{paired_end} \
      ~{fast_q_slash_fast_a} \
      ~{sorted} \
      ~{by} \
      ~{read} \
      ~{if (query_input_files_fastq) then "-q" else ""} \
      ~{if (tab_five) then "--tab5" else ""} \
      ~{if (tab_six) then "--tab6" else ""} \
      ~{if (q_seq) then "--qseq" else ""} \
      ~{if (query_input_files_multifasta) then "-f" else ""} \
      ~{if (query_input_files_raw) then "-r" else ""} \
      ~{if defined(intiint_query_input) then ("-F " +  '"' + intiint_query_input + '"') else ""} \
      ~{if (m_m_r) then "-c" else ""} \
      ~{if defined(s_slash_skip) then ("-s/--skip " +  '"' + s_slash_skip + '"') else ""} \
      ~{if defined(us_lash_up_to) then ("-u/--upto " +  '"' + us_lash_up_to + '"') else ""} \
      ~{if defined(five_slash_trim_five) then ("-5/--trim5 " +  '"' + five_slash_trim_five + '"') else ""} \
      ~{if defined(three_slash_trim_three) then ("-3/--trim3 " +  '"' + three_slash_trim_three + '"') else ""} \
      ~{if (trim_to) then "--trim-to" else ""} \
      ~{if (phred_three_three) then "--phred33" else ""} \
      ~{if (phred_six_four) then "--phred64" else ""} \
      ~{if (int_quals) then "--int-quals" else ""} \
      ~{if defined(max_mismatches_seed) then ("-N " +  '"' + max_mismatches_seed + '"') else ""} \
      ~{if defined(length_seed_substrings) then ("-L " +  '"' + length_seed_substrings + '"') else ""} \
      ~{if defined(interval_seed_substrings) then ("-i " +  '"' + interval_seed_substrings + '"') else ""} \
      ~{if defined(n_ceil) then ("--n-ceil " +  '"' + n_ceil + '"') else ""} \
      ~{if defined(d_pad) then ("--dpad " +  '"' + d_pad + '"') else ""} \
      ~{if defined(g_bar) then ("--gbar " +  '"' + g_bar + '"') else ""} \
      ~{if (ignore_quals) then "--ignore-quals" else ""} \
      ~{if (no_fw) then "--nofw" else ""} \
      ~{if (norc) then "--norc" else ""} \
      ~{if (no_one_mm_up_front) then "--no-1mm-upfront" else ""} \
      ~{if (end_to_end) then "--end-to-end" else ""} \
      ~{if defined(ma) then ("--ma " +  '"' + ma + '"') else ""} \
      ~{if defined(mp) then ("--mp " +  '"' + mp + '"') else ""} \
      ~{if defined(np) then ("--np " +  '"' + np + '"') else ""} \
      ~{if defined(rdg) then ("--rdg " +  '"' + rdg + '"') else ""} \
      ~{if defined(rfg) then ("--rfg " +  '"' + rfg + '"') else ""} \
      ~{if defined(score_min) then ("--score-min " +  '"' + score_min + '"') else ""} \
      ~{if defined(give_extending_failed) then ("-D " +  '"' + give_extending_failed + '"') else ""} \
      ~{if defined(reads_repetitive_seeds) then ("-R " +  '"' + reads_repetitive_seeds + '"') else ""} \
      ~{if defined(i_slash_mini_ns) then ("-I/--minins " +  '"' + i_slash_mini_ns + '"') else ""} \
      ~{if defined(x_slash_max_ins) then ("-X/--maxins " +  '"' + x_slash_max_ins + '"') else ""} \
      ~{if (fr_slash_rf_slash_ff) then "--fr/--rf/--ff" else ""} \
      ~{if (no_mixed) then "--no-mixed" else ""} \
      ~{if (no_discordant) then "--no-discordant" else ""} \
      ~{if (dovetail) then "--dovetail" else ""} \
      ~{if (no_contain) then "--no-contain" else ""} \
      ~{if (no_overlap) then "--no-overlap" else ""} \
      ~{if defined(align_paired_reads) then ("--align-paired-reads " +  '"' + align_paired_reads + '"') else ""} \
      ~{if (preserve_tags) then "--preserve-tags" else ""} \
      ~{if (t_slash_time) then "-t/--time" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(met_file) then ("--met-file " +  '"' + met_file + '"') else ""} \
      ~{if (met_stderr) then "--met-stderr" else ""} \
      ~{if defined(met) then ("--met " +  '"' + met + '"') else ""} \
      ~{if (no_unal) then "--no-unal" else ""} \
      ~{if (no_head) then "--no-head" else ""} \
      ~{if (no_sq) then "--no-sq" else ""} \
      ~{if defined(rg_id) then ("--rg-id " +  '"' + rg_id + '"') else ""} \
      ~{if defined(rg) then ("--rg " +  '"' + rg + '"') else ""} \
      ~{if (omit_sec_seq) then "--omit-sec-seq" else ""} \
      ~{if defined(sam_no_qname_trunc) then ("--sam-no-qname-trunc " +  '"' + sam_no_qname_trunc + '"') else ""} \
      ~{if (xeq) then "--xeq" else ""} \
      ~{if defined(soft_clipped_unmapped_tlen) then ("--soft-clipped-unmapped-tlen " +  '"' + soft_clipped_unmapped_tlen + '"') else ""} \
      ~{if defined(p_slash_threads) then ("-p/--threads " +  '"' + p_slash_threads + '"') else ""} \
      ~{if (reorder) then "--reorder" else ""} \
      ~{if (mm) then "--mm" else ""} \
      ~{if (qc_filter) then "--qc-filter" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(non_deterministic) then ("--non-deterministic " +  '"' + non_deterministic + '"') else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    query_input_files_fastq: "query input files are FASTQ .fq/.fastq (default)"
    tab_five: "query input files are TAB5 .tab5"
    tab_six: "query input files are TAB6 .tab6"
    q_seq: "query input files are in Illumina's qseq format"
    query_input_files_multifasta: "query input files are (multi-)FASTA .fa/.mfa"
    query_input_files_raw: "query input files are raw one-sequence-per-line"
    intiint_query_input: ":<int>,i:<int> query input files are continuous FASTA where reads\\nare substrings (k-mers) extracted from a FASTA file <s>\\nand aligned at offsets 1, 1+i, 1+2i ... end of reference"
    m_m_r: "<m1>, <m2>, <r> are sequences themselves, not files"
    s_slash_skip: "skip the first <int> reads/pairs in the input (none)"
    us_lash_up_to: "stop after first <int> reads/pairs (no limit)"
    five_slash_trim_five: "trim <int> bases from 5'/left end of reads (0)"
    three_slash_trim_three: "trim <int> bases from 3'/right end of reads (0)"
    trim_to: "[3:|5:]<int> trim reads exceeding <int> bases from either 3' or 5' end\\nIf the read end is not specified then it defaults to 3 (0)"
    phred_three_three: "qualities are Phred+33 (default)"
    phred_six_four: "qualities are Phred+64"
    int_quals: "qualities encoded as space-delimited integers"
    max_mismatches_seed: "max # mismatches in seed alignment; can be 0 or 1 (0)"
    length_seed_substrings: "length of seed substrings; must be >3, <32 (22)"
    interval_seed_substrings: "interval between seed substrings w/r/t read len (S,1,1.15)"
    n_ceil: "func for max # non-A/C/G/Ts permitted in aln (L,0,0.15)"
    d_pad: "include <int> extra ref chars on sides of DP table (15)"
    g_bar: "disallow gaps within <int> nucs of read extremes (4)"
    ignore_quals: "treat all quality values as 30 on Phred scale (off)"
    no_fw: "do not align forward (original) version of read (off)"
    norc: "do not align reverse-complement version of read (off)"
    no_one_mm_up_front: "do not allow 1 mismatch alignments before attempting to\\nscan for the optimal seeded alignments"
    end_to_end: "entire read must align; no clipping (on)"
    ma: "match bonus (0 for --end-to-end, 2 for --local)"
    mp: "max penalty for mismatch; lower qual = lower penalty (6)"
    np: "penalty for non-A/C/G/Ts in read/ref (1)"
    rdg: ",<int>  read gap open, extend penalties (5,3)"
    rfg: ",<int>  reference gap open, extend penalties (5,3)"
    score_min: "min acceptable alignment score w/r/t read length\\n(G,20,8 for local, L,-0.6,-0.6 for end-to-end)"
    give_extending_failed: "give up extending after <int> failed extends in a row (15)"
    reads_repetitive_seeds: "for reads w/ repetitive seeds, try <int> sets of seeds (2)"
    i_slash_mini_ns: "minimum fragment length (0)"
    x_slash_max_ins: "maximum fragment length (500)"
    fr_slash_rf_slash_ff: "-1, -2 mates align fw/rev, rev/fw, fw/fw (--fr)"
    no_mixed: "suppress unpaired alignments for paired reads"
    no_discordant: "suppress discordant alignments for paired reads"
    dovetail: "concordant when mates extend past each other"
    no_contain: "not concordant when one mate alignment contains other"
    no_overlap: "not concordant when mates overlap at all"
    align_paired_reads: "will, by default, attempt to align unpaired BAM reads.\\nUse this option to align paired-end reads instead."
    preserve_tags: "Preserve tags from the original BAM record by\\nappending them to the end of the corresponding SAM output."
    t_slash_time: "print wall-clock time taken by search phases"
    quiet: "print nothing to stderr except serious errors"
    met_file: "send metrics to file at <path> (off)"
    met_stderr: "send metrics to stderr (off)"
    met: "report internal counters & metrics every <int> secs (1)"
    no_unal: "suppress SAM records for unaligned reads"
    no_head: "suppress header lines, i.e. lines starting with @"
    no_sq: "suppress @SQ header lines"
    rg_id: "set read group id, reflected in @RG line and RG:Z: opt field"
    rg: "add <text> (\\\"lab:value\\\") to @RG line of SAM header.\\nNote: @RG line only printed when --rg-id is set."
    omit_sec_seq: "put '*' in SEQ and QUAL fields for secondary alignments."
    sam_no_qname_trunc: "standard behavior of truncating readname at first whitespace\\nat the expense of generating non-standard SAM."
    xeq: "Use '='/'X', instead of 'M,' to specify matches/mismatches in SAM record."
    soft_clipped_unmapped_tlen: "soft-clipped bases when reporting TLEN"
    p_slash_threads: "number of alignment threads to launch (1)"
    reorder: "force SAM output order to match order of input reads"
    mm: "use memory-mapped I/O for index; many 'bowtie's can share"
    qc_filter: "filter out reads that are bad according to QSEQ filter"
    seed: "seed for random number generator (0)"
    non_deterministic: "rand. gen. arbitrarily instead of using read attributes"
    h_slash_help: "print this usage message"
    note: ""
    var_67: ""
    bowtie_two_align: ""
    bt_two_idx: ""
    var_70: ""
    m_one: ""
    m_two: ""
    var_73: ""
    var_74: ""
    specified: ""
    file: ""
    files: ""
    index: ""
    many: ""
    are: ""
    filename: ""
    for: ""
    times_dot: ""
    with: ""
    e_dot_gdot: ""
    var_86: ""
    interleaved: ""
    prefix: ""
    unaligned: ""
    unpaired: ""
    var_91: ""
    var_output: ""
    paired_end: ""
    fast_q_slash_fast_a: ""
    sorted: ""
    by: ""
    read: ""
  }
  output {
    File out_stdout = stdout()
  }
}