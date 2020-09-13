version 1.0

task Bowtie2builds {
  input {
    Boolean? reference_files_fasta
    Boolean? reference_sequences_given
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
    Int bt_two_index_base
  }
  command <<<
    bowtie2_build_s \
      ~{reference_in} \
      ~{bt_two_index_base} \
      ~{if (reference_files_fasta) then "-f" else ""} \
      ~{if (reference_sequences_given) then "-c" else ""} \
      ~{if (a_slash_no_auto) then "-a/--noauto" else ""} \
      ~{if (p_slash_packed) then "-p/--packed" else ""} \
      ~{if defined(bmax) then ("--bmax " +  '"' + bmax + '"') else ""} \
      ~{if defined(bmax_divn) then ("--bmaxdivn " +  '"' + bmax_divn + '"') else ""} \
      ~{if defined(dcv) then ("--dcv " +  '"' + dcv + '"') else ""} \
      ~{if (no_dc) then "--nodc" else ""} \
      ~{if (r_slash_no_ref) then "-r/--noref" else ""} \
      ~{if (three_slash_just_ref) then "-3/--justref" else ""} \
      ~{if defined(oslash_off_rate) then ("-o/--offrate " +  '"' + oslash_off_rate + '"') else ""} \
      ~{if defined(t_slash_f_tab_chars) then ("-t/--ftabchars " +  '"' + t_slash_f_tab_chars + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (q_slash_quiet) then "-q/--quiet" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    reference_files_fasta: "reference files are Fasta (default)"
    reference_sequences_given: "reference sequences given on cmd line (as\\n<reference_in>)"
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
  output {
    File out_stdout = stdout()
  }
}