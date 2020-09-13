version 1.0

task Bowtiebuildl {
  input {
    Boolean? reference_files_fasta
    Boolean? reference_sequences_given
    Boolean? c_slash_color
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
    Boolean? n_to_a
    Int? seed
    Boolean? q_slash_quiet
    Boolean? h_slash_help
    String reference_in
    String e_bwt_outfile_base
  }
  command <<<
    bowtie_build_l \
      ~{reference_in} \
      ~{e_bwt_outfile_base} \
      ~{if (reference_files_fasta) then "-f" else ""} \
      ~{if (reference_sequences_given) then "-c" else ""} \
      ~{if (c_slash_color) then "-C/--color" else ""} \
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
      ~{if (n_to_a) then "--ntoa" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (q_slash_quiet) then "-q/--quiet" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    reference_files_fasta: "reference files are Fasta (default)"
    reference_sequences_given: "reference sequences given on cmd line (as <seq_in>)"
    c_slash_color: "build a colorspace index"
    a_slash_no_auto: "disable automatic -p/--bmax/--dcv memory-fitting"
    p_slash_packed: "use packed strings internally; slower, uses less mem"
    bmax: "max bucket sz for blockwise suffix-array builder"
    bmax_divn: "max bucket sz as divisor of ref len (default: 4)"
    dcv: "diff-cover period for blockwise (default: 1024)"
    no_dc: "disable diff-cover (algorithm becomes quadratic)"
    r_slash_no_ref: "don't build .3/.4.ebwt (packed reference) portion"
    three_slash_just_ref: "just build .3/.4.ebwt (packed reference) portion"
    oslash_off_rate: "SA is sampled every 2^offRate BWT chars (default: 5)"
    t_slash_f_tab_chars: "# of chars consumed in initial lookup (default: 10)"
    threads: "# of threads"
    n_to_a: "convert Ns in reference to As"
    seed: "seed for random number generator"
    q_slash_quiet: "verbose output (for debugging)"
    h_slash_help: "print detailed description of tool and its options"
    reference_in: "comma-separated list of files with ref sequences"
    e_bwt_outfile_base: "write Ebwt data to files with this dir/basename"
  }
  output {
    File out_stdout = stdout()
  }
}