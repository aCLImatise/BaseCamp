version 1.0

task Bowtie2Build {
  input {
    Boolean? reference_files_fasta
    Boolean? reference_sequences_given
    Boolean? large_index
    Boolean? debug
    Boolean? sanitized
    Boolean? verbose
    Boolean? a_slash_no_auto
    Boolean? p_slash_packed
    Int? bmax
    Int? bmax_divn
    Int? dcv
    Boolean? no_dc
    Boolean? r_slash_no_ref
    Boolean? three_slash_just_ref
    Int? oslash_off_rate
    Int? t_slash_f_tab_chars
    Int? threads
    Int? seed
    Boolean? q_slash_quiet
    Boolean? h_slash_help
    String reference_in
    String bt_two_index_base
  }
  command <<<
    bowtie2-build \
      ~{reference_in} \
      ~{bt_two_index_base} \
      ~{true="-f" false="" reference_files_fasta} \
      ~{true="-c" false="" reference_sequences_given} \
      ~{true="--large-index" false="" large_index} \
      ~{true="--debug" false="" debug} \
      ~{true="--sanitized" false="" sanitized} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-a/--noauto" false="" a_slash_no_auto} \
      ~{true="-p/--packed" false="" p_slash_packed} \
      ~{if defined(bmax) then ("--bmax " +  '"' + bmax + '"') else ""} \
      ~{if defined(bmax_divn) then ("--bmaxdivn " +  '"' + bmax_divn + '"') else ""} \
      ~{if defined(dcv) then ("--dcv " +  '"' + dcv + '"') else ""} \
      ~{true="--nodc" false="" no_dc} \
      ~{true="-r/--noref" false="" r_slash_no_ref} \
      ~{true="-3/--justref" false="" three_slash_just_ref} \
      ~{if defined(oslash_off_rate) then ("-o/--offrate " +  '"' + oslash_off_rate + '"') else ""} \
      ~{if defined(t_slash_f_tab_chars) then ("-t/--ftabchars " +  '"' + t_slash_f_tab_chars + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-q/--quiet" false="" q_slash_quiet} \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    reference_files_fasta: "reference files are Fasta (default)"
    reference_sequences_given: "reference sequences given on cmd line (as <reference_in>)"
    large_index: "force generated index to be 'large', even if ref has fewer than 4 billion nucleotides"
    debug: "use the debug binary; slower, assertions enabled"
    sanitized: "use sanitized binary; slower, uses ASan and/or UBSan"
    verbose: "log the issued command"
    a_slash_no_auto: "disable automatic -p/--bmax/--dcv memory-fitting"
    p_slash_packed: "use packed strings internally; slower, less memory"
    bmax: "max bucket sz for blockwise suffix-array builder"
    bmax_divn: "max bucket sz as divisor of ref len (default: 4)"
    dcv: "diff-cover period for blockwise (default: 1024)"
    no_dc: "disable diff-cover (algorithm becomes quadratic)"
    r_slash_no_ref: "don't build .3/.4 index files"
    three_slash_just_ref: "just build .3/.4 index files"
    oslash_off_rate: "SA is sampled every 2^<int> BWT chars (default: 5)"
    t_slash_f_tab_chars: "# of chars consumed in initial lookup (default: 10)"
    threads: "# of threads"
    seed: "seed for random number generator"
    q_slash_quiet: "verbose output (for debugging)"
    h_slash_help: "print detailed description of tool and its options"
    reference_in: "comma-separated list of files with ref sequences"
    bt_two_index_base: "write bt2 data to files with this dir/basename"
  }
}