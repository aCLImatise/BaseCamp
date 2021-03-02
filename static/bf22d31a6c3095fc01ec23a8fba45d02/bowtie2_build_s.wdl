version 1.0

task Bowtie2builds {
  input {
    Boolean? reference_files_fasta
    Boolean? reference_sequences_given
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
    Int? seed
    Boolean? quiet
    String reference_in
    Int bt_two_index_base
  }
  command <<<
    bowtie2_build_s \
      ~{reference_in} \
      ~{bt_two_index_base} \
      ~{if (reference_files_fasta) then "-f" else ""} \
      ~{if (reference_sequences_given) then "-c" else ""} \
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
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_files_fasta: "reference files are Fasta (default)"
    reference_sequences_given: "reference sequences given on cmd line (as\\n<reference_in>)"
    no_auto: "disable automatic -p/--bmax/--dcv memory-fitting"
    packed: "use packed strings internally; slower, less memory"
    bmax: "max bucket sz for blockwise suffix-array builder"
    bmax_divn: "max bucket sz as divisor of ref len (default: 4)"
    dcv: "diff-cover period for blockwise (default: 1024)"
    no_dc: "disable diff-cover (algorithm becomes quadratic)"
    no_ref: "don't build .3/.4 index files"
    just_ref: "just build .3/.4 index files"
    off_rate: "SA is sampled every 2^<int> BWT chars (default: 5)"
    f_tab_chars: "# of chars consumed in initial lookup (default: 10)"
    threads: "# of threads"
    seed: "seed for random number generator"
    quiet: "verbose output (for debugging)"
    reference_in: "comma-separated list of files with ref sequences"
    bt_two_index_base: "write bt2 data to files with this dir/basename"
  }
  output {
    File out_stdout = stdout()
  }
}