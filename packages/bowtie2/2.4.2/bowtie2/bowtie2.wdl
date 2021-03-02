version 1.0

task Bowtie2 {
  input {
    Boolean? query_input_files_fastq
    Boolean? tab_five
    Boolean? tab_six
    Boolean? q_seq
    Boolean? query_input_files_multifasta
    Boolean? query_input_files_raw
    Int? intiint_query_input
    Boolean? m_m_r
    Int? skip
    Int? up_to
    Int? trim_five
    Int? trim_three
    Boolean? trim_to
    Boolean? phred_three_three
    Boolean? phred_six_four
    Boolean? int_quals
    Int? sensitive
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
    Int? mini_ns
    Int? max_ins
    String? fr
    Boolean? no_mixed
    Boolean? no_discordant
    Boolean? dovetail
    Boolean? no_contain
    Boolean? no_overlap
    Boolean? align_paired_reads
    Boolean? preserve_tags
    Boolean? time
    File? un
    File? al
    File? un_conc
    File? al_conc
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
    Boolean? sam_no_qname_trunc
    Boolean? xeq
    Boolean? soft_clipped_unmapped_tlen
    Boolean? sam_append_comment
    Int? threads
    Boolean? reorder
    Boolean? mm
    Boolean? qc_filter
    Int? seed
    Boolean? non_deterministic
    String could
    String note
    String var_68
    Int bt_two_idx
    String i
    Int m_one
    Int m_two
    String var_73
    String var_74
    String specified
    File var_file
    String files
    String index
    String be
    String many
    String are
    File filename
    String for
    String gzip
    String times_dot
    String with
    String e_dot_gdot
    String var_88
    String interleaved
    String prefix
    String unaligned
    String unpaired
    String var_93
    String var_output
    String paired_end
    String reads_dot
    String fast_q
    String sorted
    String by
    String read
  }
  command <<<
    bowtie2 \
      ~{could} \
      ~{note} \
      ~{var_68} \
      ~{bt_two_idx} \
      ~{i} \
      ~{m_one} \
      ~{m_two} \
      ~{var_73} \
      ~{var_74} \
      ~{specified} \
      ~{var_file} \
      ~{files} \
      ~{index} \
      ~{be} \
      ~{many} \
      ~{are} \
      ~{filename} \
      ~{for} \
      ~{gzip} \
      ~{times_dot} \
      ~{with} \
      ~{e_dot_gdot} \
      ~{var_88} \
      ~{interleaved} \
      ~{prefix} \
      ~{unaligned} \
      ~{unpaired} \
      ~{var_93} \
      ~{var_output} \
      ~{paired_end} \
      ~{reads_dot} \
      ~{fast_q} \
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
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(up_to) then ("--upto " +  '"' + up_to + '"') else ""} \
      ~{if defined(trim_five) then ("--trim5 " +  '"' + trim_five + '"') else ""} \
      ~{if defined(trim_three) then ("--trim3 " +  '"' + trim_three + '"') else ""} \
      ~{if (trim_to) then "--trim-to" else ""} \
      ~{if (phred_three_three) then "--phred33" else ""} \
      ~{if (phred_six_four) then "--phred64" else ""} \
      ~{if (int_quals) then "--int-quals" else ""} \
      ~{if defined(sensitive) then ("--sensitive " +  '"' + sensitive + '"') else ""} \
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
      ~{if defined(mini_ns) then ("--minins " +  '"' + mini_ns + '"') else ""} \
      ~{if defined(max_ins) then ("--maxins " +  '"' + max_ins + '"') else ""} \
      ~{if defined(fr) then ("--fr " +  '"' + fr + '"') else ""} \
      ~{if (no_mixed) then "--no-mixed" else ""} \
      ~{if (no_discordant) then "--no-discordant" else ""} \
      ~{if (dovetail) then "--dovetail" else ""} \
      ~{if (no_contain) then "--no-contain" else ""} \
      ~{if (no_overlap) then "--no-overlap" else ""} \
      ~{if (align_paired_reads) then "--align-paired-reads" else ""} \
      ~{if (preserve_tags) then "--preserve-tags" else ""} \
      ~{if (time) then "--time" else ""} \
      ~{if defined(un) then ("--un " +  '"' + un + '"') else ""} \
      ~{if defined(al) then ("--al " +  '"' + al + '"') else ""} \
      ~{if defined(un_conc) then ("--un-conc " +  '"' + un_conc + '"') else ""} \
      ~{if defined(al_conc) then ("--al-conc " +  '"' + al_conc + '"') else ""} \
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
      ~{if (sam_no_qname_trunc) then "--sam-no-qname-trunc" else ""} \
      ~{if (xeq) then "--xeq" else ""} \
      ~{if (soft_clipped_unmapped_tlen) then "--soft-clipped-unmapped-tlen" else ""} \
      ~{if (sam_append_comment) then "--sam-append-comment" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (reorder) then "--reorder" else ""} \
      ~{if (mm) then "--mm" else ""} \
      ~{if (qc_filter) then "--qc-filter" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (non_deterministic) then "--non-deterministic" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bowtie2:2.4.2--py38h1c8e9b9_1"
  }
  parameter_meta {
    query_input_files_fastq: "query input files are FASTQ .fq/.fastq (default)"
    tab_five: "query input files are TAB5 .tab5"
    tab_six: "query input files are TAB6 .tab6"
    q_seq: "query input files are in Illumina's qseq format"
    query_input_files_multifasta: "query input files are (multi-)FASTA .fa/.mfa"
    query_input_files_raw: "query input files are raw one-sequence-per-line"
    intiint_query_input: ":<int>,i:<int> query input files are continuous FASTA where reads\\nare substrings (k-mers) extracted from a FASTA file <s>\\nand aligned at offsets 1, 1+i, 1+2i ... end of reference"
    m_m_r: "<m1>, <m2>, <r> are sequences themselves, not files"
    skip: "skip the first <int> reads/pairs in the input (none)"
    up_to: "stop after first <int> reads/pairs (no limit)"
    trim_five: "trim <int> bases from 5'/left end of reads (0)"
    trim_three: "trim <int> bases from 3'/right end of reads (0)"
    trim_to: "[3:|5:]<int> trim reads exceeding <int> bases from either 3' or 5' end\\nIf the read end is not specified then it defaults to 3 (0)"
    phred_three_three: "qualities are Phred+33 (default)"
    phred_six_four: "qualities are Phred+64"
    int_quals: "qualities encoded as space-delimited integers"
    sensitive: ",1,1.15 (default)"
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
    mini_ns: "minimum fragment length (0)"
    max_ins: "maximum fragment length (500)"
    fr: "align fw/rev, rev/fw, fw/fw (--fr)"
    no_mixed: "suppress unpaired alignments for paired reads"
    no_discordant: "suppress discordant alignments for paired reads"
    dovetail: "concordant when mates extend past each other"
    no_contain: "not concordant when one mate alignment contains other"
    no_overlap: "not concordant when mates overlap at all"
    align_paired_reads: "Bowtie2 will, by default, attempt to align unpaired BAM reads.\\nUse this option to align paired-end reads instead."
    preserve_tags: "Preserve tags from the original BAM record by\\nappending them to the end of the corresponding SAM output."
    time: "print wall-clock time taken by search phases"
    un: "write unpaired reads that didn't align to <path>"
    al: "write unpaired reads that aligned at least once to <path>"
    un_conc: "write pairs that didn't align concordantly to <path>"
    al_conc: "write pairs that aligned concordantly at least once to <path>\\n(Note: for --un, --al, --un-conc, or --al-conc, add '-gz' to the option name, e.g.\\n--un-gz <path>, to gzip compress output, or add '-bz2' to bzip2 compress output.)"
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
    sam_no_qname_trunc: "Suppress standard behavior of truncating readname at first whitespace\\nat the expense of generating non-standard SAM."
    xeq: "Use '='/'X', instead of 'M,' to specify matches/mismatches in SAM record."
    soft_clipped_unmapped_tlen: "Exclude soft-clipped bases when reporting TLEN"
    sam_append_comment: "Append FASTA/FASTQ comment to SAM record"
    threads: "number of alignment threads to launch (1)"
    reorder: "force SAM output order to match order of input reads"
    mm: "use memory-mapped I/O for index; many 'bowtie's can share"
    qc_filter: "filter out reads that are bad according to QSEQ filter"
    seed: "seed for random number generator (0)"
    non_deterministic: "seed rand. gen. arbitrarily instead of using read attributes"
    could: ""
    note: ""
    var_68: ""
    bt_two_idx: ""
    i: ""
    m_one: ""
    m_two: ""
    var_73: ""
    var_74: ""
    specified: ""
    var_file: ""
    files: ""
    index: ""
    be: ""
    many: ""
    are: ""
    filename: ""
    for: ""
    gzip: ""
    times_dot: ""
    with: ""
    e_dot_gdot: ""
    var_88: ""
    interleaved: ""
    prefix: ""
    unaligned: ""
    unpaired: ""
    var_93: ""
    var_output: ""
    paired_end: ""
    reads_dot: ""
    fast_q: ""
    sorted: ""
    by: ""
    read: ""
  }
  output {
    File out_stdout = stdout()
    File out_al_conc = "${in_al_conc}"
  }
}