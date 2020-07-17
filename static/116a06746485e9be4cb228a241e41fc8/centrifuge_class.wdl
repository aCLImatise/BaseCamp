version 1.0

task CentrifugeClass {
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
    Boolean? ignore_quals
    Boolean? no_fw
    Boolean? norc
    Int? min_hit_len
    Int? report_upto_int
    String? host_tax_ids
    String? exclude_tax_ids
    String? out_fmt
    String? tab_fmt_cols
    Boolean? t_slash_time
    Boolean? quiet
    File? met_file
    Boolean? met_stderr
    Int? met
    Int? p_slash_threads
    Boolean? mm
    Boolean? qc_filter
    Int? seed
    String? non_deterministic
    Boolean? h_slash_help
  }
  command <<<
    centrifuge-class \
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
      ~{true="--ignore-quals" false="" ignore_quals} \
      ~{true="--nofw" false="" no_fw} \
      ~{true="--norc" false="" norc} \
      ~{if defined(min_hit_len) then ("--min-hitlen " +  '"' + min_hit_len + '"') else ""} \
      ~{if defined(report_upto_int) then ("-k " +  '"' + report_upto_int + '"') else ""} \
      ~{if defined(host_tax_ids) then ("--host-taxids " +  '"' + host_tax_ids + '"') else ""} \
      ~{if defined(exclude_tax_ids) then ("--exclude-taxids " +  '"' + exclude_tax_ids + '"') else ""} \
      ~{if defined(out_fmt) then ("--out-fmt " +  '"' + out_fmt + '"') else ""} \
      ~{if defined(tab_fmt_cols) then ("--tab-fmt-cols " +  '"' + tab_fmt_cols + '"') else ""} \
      ~{true="-t/--time" false="" t_slash_time} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(met_file) then ("--met-file " +  '"' + met_file + '"') else ""} \
      ~{true="--met-stderr" false="" met_stderr} \
      ~{if defined(met) then ("--met " +  '"' + met + '"') else ""} \
      ~{if defined(p_slash_threads) then ("-p/--threads " +  '"' + p_slash_threads + '"') else ""} \
      ~{true="--mm" false="" mm} \
      ~{true="--qc-filter" false="" qc_filter} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(non_deterministic) then ("--non-deterministic " +  '"' + non_deterministic + '"') else ""} \
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
    ignore_quals: "treat all quality values as 30 on Phred scale (off)"
    no_fw: "do not align forward (original) version of read (off)"
    norc: "do not align reverse-complement version of read (off)"
    min_hit_len: "minimum length of partial hits (default 22, must be greater than 15)"
    report_upto_int: "report upto <int> distinct, primary assignments for each read or pair"
    host_tax_ids: "comma-separated list of taxonomic IDs that will be preferred in classification"
    exclude_tax_ids: "comma-separated list of taxonomic IDs that will be excluded in classification"
    out_fmt: "define output format, either 'tab' or 'sam' (tab)"
    tab_fmt_cols: "columns in tabular format, comma separated  default: readID,seqID,taxID,score,2ndBestScore,hitLength,queryLength,numMatches"
    t_slash_time: "print wall-clock time taken by search phases"
    quiet: "print nothing to stderr except serious errors"
    met_file: "send metrics to file at <path> (off)"
    met_stderr: "send metrics to stderr (off)"
    met: "report internal counters & metrics every <int> secs (1)"
    p_slash_threads: "number of alignment threads to launch (1)"
    mm: "use memory-mapped I/O for index; many instances can share"
    qc_filter: "filter out reads that are bad according to QSEQ filter"
    seed: "seed for random number generator (0)"
    non_deterministic: "rand. gen. arbitrarily instead of using read attributes"
    h_slash_help: "print this usage message"
  }
}