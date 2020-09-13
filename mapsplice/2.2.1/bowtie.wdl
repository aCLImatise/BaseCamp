version 1.0

task Bowtie {
  input {
    Boolean? query_input_files_fastq
    Boolean? query_input_files_multifasta
    Boolean? query_input_files_raw
    Boolean? query_sequences_given
    Boolean? reads_index_colorspace
    File? q_slash_quals
    File? q_one_slash_q_two
    Int? s_slash_skip
    Int? us_lash_q_up_to
    Int? five_slash_trim_five
    Int? three_slash_trim_three
    Boolean? phred_three_three_quals
    Boolean? phred_six_four_quals
    Boolean? solexa_quals
    Boolean? solexa_one_dot_three_quals
    Boolean? integer_quals
    Int? report_endtoend_hits
    Int? e_slash_maq_err
    Int? lslash_seed_len
    Boolean? no_maq_round
    Int? i_slash_mini_ns
    Int? x_slash_max_ins
    Boolean? fr_slash_rf_slash_ff
    Boolean? nofws_lash_norc
    Int? max_bts
    Int? pair_tries
    Boolean? y_slash_try_hard
    Int? chunk_mbs
    Int? report_int_alignments
    Boolean? a_slash_all
    Int? suppress_alignments_exist
    Int? m_reports_random
    Boolean? best
    Boolean? strata
    Boolean? t_slash_time
    Int? b_slash_off_base
    Boolean? quiet
    Boolean? ref_out
    Boolean? ref_idx
    File? al
    File? un
    Int? max
    String? suppress
    Boolean? full_ref
    Int? snp_phred
    Boolean? col_cseq
    Boolean? col_c_qual
    Boolean? col_keep_ends
    Boolean? s_slash_sam
    Int? mapq
    Boolean? sam_no_head
    Boolean? sam_no_sq
    String? sam_rg
    Int? oslash_off_rate
    Int? p_slash_threads
    Boolean? mm
    Boolean? shmem
    Int? seed
    Boolean? verbose
    Boolean? h_slash_help
    String hit
    Int m_one
    Int m_two
    String var_63
    String s
    String sequences
    String comma_separated
    File file
    String themselves
    String var_if
    String list
    String to
    String of
    String set
    String write
    String files
    String hits
    String containing
    String crossbow_style
    String downstream
    String unpaired
    String upstream
    String mates
    String reads
    String reads_dot
    String can
    String be
  }
  command <<<
    bowtie \
      ~{hit} \
      ~{m_one} \
      ~{m_two} \
      ~{var_63} \
      ~{s} \
      ~{sequences} \
      ~{comma_separated} \
      ~{file} \
      ~{themselves} \
      ~{var_if} \
      ~{list} \
      ~{to} \
      ~{of} \
      ~{set} \
      ~{write} \
      ~{files} \
      ~{hits} \
      ~{containing} \
      ~{crossbow_style} \
      ~{downstream} \
      ~{unpaired} \
      ~{upstream} \
      ~{mates} \
      ~{reads} \
      ~{reads_dot} \
      ~{can} \
      ~{be} \
      ~{if (query_input_files_fastq) then "-q" else ""} \
      ~{if (query_input_files_multifasta) then "-f" else ""} \
      ~{if (query_input_files_raw) then "-r" else ""} \
      ~{if (query_sequences_given) then "-c" else ""} \
      ~{if (reads_index_colorspace) then "-C" else ""} \
      ~{if defined(q_slash_quals) then ("-Q/--quals " +  '"' + q_slash_quals + '"') else ""} \
      ~{if defined(q_one_slash_q_two) then ("--Q1/--Q2 " +  '"' + q_one_slash_q_two + '"') else ""} \
      ~{if defined(s_slash_skip) then ("-s/--skip " +  '"' + s_slash_skip + '"') else ""} \
      ~{if defined(us_lash_q_up_to) then ("-u/--qupto " +  '"' + us_lash_q_up_to + '"') else ""} \
      ~{if defined(five_slash_trim_five) then ("-5/--trim5 " +  '"' + five_slash_trim_five + '"') else ""} \
      ~{if defined(three_slash_trim_three) then ("-3/--trim3 " +  '"' + three_slash_trim_three + '"') else ""} \
      ~{if (phred_three_three_quals) then "--phred33-quals" else ""} \
      ~{if (phred_six_four_quals) then "--phred64-quals" else ""} \
      ~{if (solexa_quals) then "--solexa-quals" else ""} \
      ~{if (solexa_one_dot_three_quals) then "--solexa1.3-quals" else ""} \
      ~{if (integer_quals) then "--integer-quals" else ""} \
      ~{if defined(report_endtoend_hits) then ("-v " +  '"' + report_endtoend_hits + '"') else ""} \
      ~{if defined(e_slash_maq_err) then ("-e/--maqerr " +  '"' + e_slash_maq_err + '"') else ""} \
      ~{if defined(lslash_seed_len) then ("-l/--seedlen " +  '"' + lslash_seed_len + '"') else ""} \
      ~{if (no_maq_round) then "--nomaqround" else ""} \
      ~{if defined(i_slash_mini_ns) then ("-I/--minins " +  '"' + i_slash_mini_ns + '"') else ""} \
      ~{if defined(x_slash_max_ins) then ("-X/--maxins " +  '"' + x_slash_max_ins + '"') else ""} \
      ~{if (fr_slash_rf_slash_ff) then "--fr/--rf/--ff" else ""} \
      ~{if (nofws_lash_norc) then "--nofw/--norc" else ""} \
      ~{if defined(max_bts) then ("--maxbts " +  '"' + max_bts + '"') else ""} \
      ~{if defined(pair_tries) then ("--pairtries " +  '"' + pair_tries + '"') else ""} \
      ~{if (y_slash_try_hard) then "-y/--tryhard" else ""} \
      ~{if defined(chunk_mbs) then ("--chunkmbs " +  '"' + chunk_mbs + '"') else ""} \
      ~{if defined(report_int_alignments) then ("-k " +  '"' + report_int_alignments + '"') else ""} \
      ~{if (a_slash_all) then "-a/--all" else ""} \
      ~{if defined(suppress_alignments_exist) then ("-m " +  '"' + suppress_alignments_exist + '"') else ""} \
      ~{if defined(m_reports_random) then ("-M " +  '"' + m_reports_random + '"') else ""} \
      ~{if (best) then "--best" else ""} \
      ~{if (strata) then "--strata" else ""} \
      ~{if (t_slash_time) then "-t/--time" else ""} \
      ~{if defined(b_slash_off_base) then ("-B/--offbase " +  '"' + b_slash_off_base + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (ref_out) then "--refout" else ""} \
      ~{if (ref_idx) then "--refidx" else ""} \
      ~{if defined(al) then ("--al " +  '"' + al + '"') else ""} \
      ~{if defined(un) then ("--un " +  '"' + un + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(suppress) then ("--suppress " +  '"' + suppress + '"') else ""} \
      ~{if (full_ref) then "--fullref" else ""} \
      ~{if defined(snp_phred) then ("--snpphred " +  '"' + snp_phred + '"') else ""} \
      ~{if (col_cseq) then "--col-cseq" else ""} \
      ~{if (col_c_qual) then "--col-cqual" else ""} \
      ~{if (col_keep_ends) then "--col-keepends" else ""} \
      ~{if (s_slash_sam) then "-S/--sam" else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if (sam_no_head) then "--sam-nohead" else ""} \
      ~{if (sam_no_sq) then "--sam-nosq" else ""} \
      ~{if defined(sam_rg) then ("--sam-RG " +  '"' + sam_rg + '"') else ""} \
      ~{if defined(oslash_off_rate) then ("-o/--offrate " +  '"' + oslash_off_rate + '"') else ""} \
      ~{if defined(p_slash_threads) then ("-p/--threads " +  '"' + p_slash_threads + '"') else ""} \
      ~{if (mm) then "--mm" else ""} \
      ~{if (shmem) then "--shmem" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    query_input_files_fastq: "query input files are FASTQ .fq/.fastq (default)"
    query_input_files_multifasta: "query input files are (multi-)FASTA .fa/.mfa"
    query_input_files_raw: "query input files are raw one-sequence-per-line"
    query_sequences_given: "query sequences given on cmd line (as <mates>, <singles>)"
    reads_index_colorspace: "reads and index are in colorspace"
    q_slash_quals: "QV file(s) corresponding to CSFASTA inputs; use with -f -C"
    q_one_slash_q_two: "same as -Q, but for mate files 1 and 2 respectively"
    s_slash_skip: "skip the first <int> reads/pairs in the input"
    us_lash_q_up_to: "stop after first <int> reads/pairs (excl. skipped reads)"
    five_slash_trim_five: "trim <int> bases from 5' (left) end of reads"
    three_slash_trim_three: "trim <int> bases from 3' (right) end of reads"
    phred_three_three_quals: "input quals are Phred+33 (default)"
    phred_six_four_quals: "input quals are Phred+64 (same as --solexa1.3-quals)"
    solexa_quals: "input quals are from GA Pipeline ver. < 1.3"
    solexa_one_dot_three_quals: "input quals are from GA Pipeline ver. >= 1.3"
    integer_quals: "qualities are given as space-separated integers (not ASCII)"
    report_endtoend_hits: "report end-to-end hits w/ <=v mismatches; ignore qualities"
    e_slash_maq_err: "max sum of mismatch quals across alignment for -n (def: 70)"
    lslash_seed_len: "seed length for -n (default: 28)"
    no_maq_round: "disable Maq-like quality rounding for -n (nearest 10 <= 30)"
    i_slash_mini_ns: "minimum insert size for paired-end alignment (default: 0)"
    x_slash_max_ins: "maximum insert size for paired-end alignment (default: 250)"
    fr_slash_rf_slash_ff: "-1, -2 mates align fw/rev, rev/fw, fw/fw (default: --fr)"
    nofws_lash_norc: "do not align to forward/reverse-complement reference strand"
    max_bts: "max # backtracks for -n 2/3 (default: 125, 800 for --best)"
    pair_tries: "max # attempts to find mate for anchor hit (default: 100)"
    y_slash_try_hard: "try hard to find valid alignments, at the expense of speed"
    chunk_mbs: "max megabytes of RAM for best-first search frames (def: 64)"
    report_int_alignments: "report up to <int> good alignments per read (default: 1)"
    a_slash_all: "report all alignments per read (much slower than low -k)"
    suppress_alignments_exist: "suppress all alignments if > <int> exist (def: no limit)"
    m_reports_random: "like -m, but reports 1 random hit (MAPQ=0); requires --best"
    best: "hits guaranteed best stratum; ties broken by quality"
    strata: "hits in sub-optimal strata aren't reported (requires --best)"
    t_slash_time: "print wall-clock time taken by search phases"
    b_slash_off_base: "leftmost ref offset = <int> in bowtie output (default: 0)"
    quiet: "print nothing but the alignments"
    ref_out: "write alignments to files refXXXXX.map, 1 map per reference"
    ref_idx: "refer to ref. seqs by 0-based index rather than name"
    al: "write aligned reads/pairs to file(s) <fname>"
    un: "write unaligned reads/pairs to file(s) <fname>"
    max: "write reads/pairs over -m limit to file(s) <fname>"
    suppress: "suppresses given columns (comma-delim'ed) in default output"
    full_ref: "write entire ref name (default: only up to 1st space)"
    snp_phred: "Phred penalty for SNP when decoding colorspace (def: 30)"
    col_cseq: "print aligned colorspace seqs as colors, not decoded bases"
    col_c_qual: "print original colorspace quals, not decoded quals"
    col_keep_ends: "keep nucleotides at extreme ends of decoded alignment"
    s_slash_sam: "write hits in SAM format"
    mapq: "default mapping quality (MAPQ) to print for SAM alignments"
    sam_no_head: "supppress header lines (starting with @) for SAM output"
    sam_no_sq: "supppress @SQ header lines for SAM output"
    sam_rg: "add <text> (usually \\\"lab=value\\\") to @RG line of SAM header"
    oslash_off_rate: "override offrate of index; must be >= index's offrate"
    p_slash_threads: "number of alignment threads to launch (default: 1)"
    mm: "use memory-mapped I/O for index; many 'bowtie's can share"
    shmem: "use shared mem for index; many 'bowtie's can share"
    seed: "seed for random number generator"
    verbose: "verbose output (for debugging)"
    h_slash_help: "print this usage message"
    hit: ""
    m_one: ""
    m_two: ""
    var_63: ""
    s: ""
    sequences: ""
    comma_separated: ""
    file: ""
    themselves: ""
    var_if: ""
    list: ""
    to: ""
    of: ""
    set: ""
    write: ""
    files: ""
    hits: ""
    containing: ""
    crossbow_style: ""
    downstream: ""
    unpaired: ""
    upstream: ""
    mates: ""
    reads: ""
    reads_dot: ""
    can: ""
    be: ""
  }
  output {
    File out_stdout = stdout()
  }
}