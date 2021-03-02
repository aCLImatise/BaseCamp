version 1.0

task Centrifugeclass {
  input {
    Boolean? query_input_files_fastq
    Boolean? q_seq
    Boolean? query_input_files_multifasta
    Boolean? query_input_files_raw
    Boolean? m_m_r
    Int? skip
    Int? up_to
    Int? trim_five
    Int? trim_three
    Boolean? phred_three_three
    Boolean? phred_six_four
    Boolean? int_quals
    Boolean? ignore_quals
    Boolean? no_fw
    Boolean? norc
    Int? min_hit_len
    Int? report_upto_assignments
    String? host_tax_ids
    String? exclude_tax_ids
    String? out_fmt
    Int? tab_fmt_cols
    Boolean? time
    Boolean? quiet
    File? met_file
    Boolean? met_stderr
    Int? met
    Int? threads
    Boolean? mm
    Boolean? qc_filter
    Int? seed
    String? non_deterministic
    String cf_idx
    Int m_one
    Int m_two
    String var_34
    String report
    String specified
    File var_file
    String files
    String index
    String many
    File filename
    String for
    String times_dot
    String with
    String e_dot_gdot
    String classification
    String prefix
    String tabular
    String unpaired
    String var_output
  }
  command <<<
    centrifuge_class \
      ~{cf_idx} \
      ~{m_one} \
      ~{m_two} \
      ~{var_34} \
      ~{report} \
      ~{specified} \
      ~{var_file} \
      ~{files} \
      ~{index} \
      ~{many} \
      ~{filename} \
      ~{for} \
      ~{times_dot} \
      ~{with} \
      ~{e_dot_gdot} \
      ~{classification} \
      ~{prefix} \
      ~{tabular} \
      ~{unpaired} \
      ~{var_output} \
      ~{if (query_input_files_fastq) then "-q" else ""} \
      ~{if (q_seq) then "--qseq" else ""} \
      ~{if (query_input_files_multifasta) then "-f" else ""} \
      ~{if (query_input_files_raw) then "-r" else ""} \
      ~{if (m_m_r) then "-c" else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(up_to) then ("--upto " +  '"' + up_to + '"') else ""} \
      ~{if defined(trim_five) then ("--trim5 " +  '"' + trim_five + '"') else ""} \
      ~{if defined(trim_three) then ("--trim3 " +  '"' + trim_three + '"') else ""} \
      ~{if (phred_three_three) then "--phred33" else ""} \
      ~{if (phred_six_four) then "--phred64" else ""} \
      ~{if (int_quals) then "--int-quals" else ""} \
      ~{if (ignore_quals) then "--ignore-quals" else ""} \
      ~{if (no_fw) then "--nofw" else ""} \
      ~{if (norc) then "--norc" else ""} \
      ~{if defined(min_hit_len) then ("--min-hitlen " +  '"' + min_hit_len + '"') else ""} \
      ~{if defined(report_upto_assignments) then ("-k " +  '"' + report_upto_assignments + '"') else ""} \
      ~{if defined(host_tax_ids) then ("--host-taxids " +  '"' + host_tax_ids + '"') else ""} \
      ~{if defined(exclude_tax_ids) then ("--exclude-taxids " +  '"' + exclude_tax_ids + '"') else ""} \
      ~{if defined(out_fmt) then ("--out-fmt " +  '"' + out_fmt + '"') else ""} \
      ~{if defined(tab_fmt_cols) then ("--tab-fmt-cols " +  '"' + tab_fmt_cols + '"') else ""} \
      ~{if (time) then "--time" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(met_file) then ("--met-file " +  '"' + met_file + '"') else ""} \
      ~{if (met_stderr) then "--met-stderr" else ""} \
      ~{if defined(met) then ("--met " +  '"' + met + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (mm) then "--mm" else ""} \
      ~{if (qc_filter) then "--qc-filter" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(non_deterministic) then ("--non-deterministic " +  '"' + non_deterministic + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query_input_files_fastq: "query input files are FASTQ .fq/.fastq (default)"
    q_seq: "query input files are in Illumina's qseq format"
    query_input_files_multifasta: "query input files are (multi-)FASTA .fa/.mfa"
    query_input_files_raw: "query input files are raw one-sequence-per-line"
    m_m_r: "<m1>, <m2>, <r> are sequences themselves, not files"
    skip: "skip the first <int> reads/pairs in the input (none)"
    up_to: "stop after first <int> reads/pairs (no limit)"
    trim_five: "trim <int> bases from 5'/left end of reads (0)"
    trim_three: "trim <int> bases from 3'/right end of reads (0)"
    phred_three_three: "qualities are Phred+33 (default)"
    phred_six_four: "qualities are Phred+64"
    int_quals: "qualities encoded as space-delimited integers"
    ignore_quals: "treat all quality values as 30 on Phred scale (off)"
    no_fw: "do not align forward (original) version of read (off)"
    norc: "do not align reverse-complement version of read (off)"
    min_hit_len: "minimum length of partial hits (default 22, must be greater than 15)"
    report_upto_assignments: "report upto <int> distinct, primary assignments for each read or pair"
    host_tax_ids: "comma-separated list of taxonomic IDs that will be preferred in classification"
    exclude_tax_ids: "comma-separated list of taxonomic IDs that will be excluded in classification"
    out_fmt: "define output format, either 'tab' or 'sam' (tab)"
    tab_fmt_cols: "columns in tabular format, comma separated\\ndefault: readID,seqID,taxID,score,2ndBestScore,hitLength,queryLength,numMatches"
    time: "print wall-clock time taken by search phases"
    quiet: "print nothing to stderr except serious errors"
    met_file: "send metrics to file at <path> (off)"
    met_stderr: "send metrics to stderr (off)"
    met: "report internal counters & metrics every <int> secs (1)"
    threads: "number of alignment threads to launch (1)"
    mm: "use memory-mapped I/O for index; many instances can share"
    qc_filter: "filter out reads that are bad according to QSEQ filter"
    seed: "seed for random number generator (0)"
    non_deterministic: "rand. gen. arbitrarily instead of using read attributes"
    cf_idx: ""
    m_one: ""
    m_two: ""
    var_34: ""
    report: ""
    specified: ""
    var_file: ""
    files: ""
    index: ""
    many: ""
    filename: ""
    for: ""
    times_dot: ""
    with: ""
    e_dot_gdot: ""
    classification: ""
    prefix: ""
    tabular: ""
    unpaired: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}