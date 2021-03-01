version 1.0

task Bowtiebuildl {
  input {
    Boolean? reference_files_fasta
    Boolean? reference_sequences_given
    Boolean? color
    Boolean? no_auto
    Boolean? packed
    Int? bmax
    Int? bmax_divn
    Int? dcv
    Boolean? no_dc
    Boolean? no_ref
    Boolean? just_ref
    Int? off_rate
    Int? f_tab_chars
    Int? threads
    Boolean? n_to_a
    Int? seed
    Boolean? quiet
    String reference_in
    String e_bwt_outfile_base
  }
  command <<<
    bowtie_build_l \
      ~{reference_in} \
      ~{e_bwt_outfile_base} \
      ~{if (reference_files_fasta) then "-f" else ""} \
      ~{if (reference_sequences_given) then "-c" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (no_auto) then "--noauto" else ""} \
      ~{if (packed) then "--packed" else ""} \
      ~{if defined(bmax) then ("--bmax " +  '"' + bmax + '"') else ""} \
      ~{if defined(bmax_divn) then ("--bmaxdivn " +  '"' + bmax_divn + '"') else ""} \
      ~{if defined(dcv) then ("--dcv " +  '"' + dcv + '"') else ""} \
      ~{if (no_dc) then "--nodc" else ""} \
      ~{if (no_ref) then "--noref" else ""} \
      ~{if (just_ref) then "--justref" else ""} \
      ~{if defined(off_rate) then ("--offrate " +  '"' + off_rate + '"') else ""} \
      ~{if defined(f_tab_chars) then ("--ftabchars " +  '"' + f_tab_chars + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (n_to_a) then "--ntoa" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_files_fasta: "reference files are Fasta (default)"
    reference_sequences_given: "reference sequences given on cmd line (as <seq_in>)"
    color: "build a colorspace index"
    no_auto: "disable automatic -p/--bmax/--dcv memory-fitting"
    packed: "use packed strings internally; slower, uses less mem"
    bmax: "max bucket sz for blockwise suffix-array builder"
    bmax_divn: "max bucket sz as divisor of ref len (default: 4)"
    dcv: "diff-cover period for blockwise (default: 1024)"
    no_dc: "disable diff-cover (algorithm becomes quadratic)"
    no_ref: "don't build .3/.4.ebwt (packed reference) portion"
    just_ref: "just build .3/.4.ebwt (packed reference) portion"
    off_rate: "SA is sampled every 2^offRate BWT chars (default: 5)"
    f_tab_chars: "# of chars consumed in initial lookup (default: 10)"
    threads: "# of threads"
    n_to_a: "convert Ns in reference to As"
    seed: "seed for random number generator"
    quiet: "verbose output (for debugging)"
    reference_in: "comma-separated list of files with ref sequences"
    e_bwt_outfile_base: "write Ebwt data to files with this dir/basename"
  }
  output {
    File out_stdout = stdout()
  }
}