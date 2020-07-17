version 1.0

task CentrifugeBuildBin {
  input {
    Boolean? reference_sequences_given
    Boolean? a_slash_no_auto
    Int? bmax
    Int? bmax_divn
    Int? dcv
    Boolean? no_dc
    Boolean? r_slash_no_ref
    Boolean? three_slash_just_ref
    Int? oslash_off_rate
    Int? t_slash_f_tab_chars
    File? conversion_table
    Boolean? taxonomy_tree
    Boolean? name_table
    Boolean? size_table
    Int? seed
    Boolean? q_slash_quiet
    Int? p_slash_threads
    Int? km_er_count
    Boolean? h_slash_help
    String reference_in
    String centrifuge_index_base
  }
  command <<<
    centrifuge-build-bin \
      ~{reference_in} \
      ~{centrifuge_index_base} \
      ~{true="-c" false="" reference_sequences_given} \
      ~{true="-a/--noauto" false="" a_slash_no_auto} \
      ~{if defined(bmax) then ("--bmax " +  '"' + bmax + '"') else ""} \
      ~{if defined(bmax_divn) then ("--bmaxdivn " +  '"' + bmax_divn + '"') else ""} \
      ~{if defined(dcv) then ("--dcv " +  '"' + dcv + '"') else ""} \
      ~{true="--nodc" false="" no_dc} \
      ~{true="-r/--noref" false="" r_slash_no_ref} \
      ~{true="-3/--justref" false="" three_slash_just_ref} \
      ~{if defined(oslash_off_rate) then ("-o/--offrate " +  '"' + oslash_off_rate + '"') else ""} \
      ~{if defined(t_slash_f_tab_chars) then ("-t/--ftabchars " +  '"' + t_slash_f_tab_chars + '"') else ""} \
      ~{if defined(conversion_table) then ("--conversion-table " +  '"' + conversion_table + '"') else ""} \
      ~{true="--taxonomy-tree" false="" taxonomy_tree} \
      ~{true="--name-table" false="" name_table} \
      ~{true="--size-table" false="" size_table} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-q/--quiet" false="" q_slash_quiet} \
      ~{if defined(p_slash_threads) then ("-p/--threads " +  '"' + p_slash_threads + '"') else ""} \
      ~{if defined(km_er_count) then ("--kmer-count " +  '"' + km_er_count + '"') else ""} \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    reference_sequences_given: "reference sequences given on cmd line (as <reference_in>)"
    a_slash_no_auto: "disable automatic -p/--bmax/--dcv memory-fitting"
    bmax: "max bucket sz for blockwise suffix-array builder"
    bmax_divn: "max bucket sz as divisor of ref len (default: 4)"
    dcv: "diff-cover period for blockwise (default: 1024)"
    no_dc: "disable diff-cover (algorithm becomes quadratic)"
    r_slash_no_ref: "don't build .3/.4.bt2 (packed reference) portion"
    three_slash_just_ref: "just build .3/.4.bt2 (packed reference) portion"
    oslash_off_rate: "SA is sampled every 2^offRate BWT chars (default: 5)"
    t_slash_f_tab_chars: "# of chars consumed in initial lookup (default: 10)"
    conversion_table: "a table that converts any id to a taxonomy id"
    taxonomy_tree: "<file name>  taxonomy tree"
    name_table: "<file name>  names corresponding to taxonomic IDs"
    size_table: "<file name>  table of contig (or genome) sizes"
    seed: "seed for random number generator"
    q_slash_quiet: "verbose output (for debugging)"
    p_slash_threads: "number of alignment threads to launch (1)"
    km_er_count: "k size for counting the number of distinct k-mer"
    h_slash_help: "print detailed description of tool and its options"
    reference_in: "comma-separated list of files with ref sequences"
    centrifuge_index_base: "write cf data to files with this dir/basename"
  }
}