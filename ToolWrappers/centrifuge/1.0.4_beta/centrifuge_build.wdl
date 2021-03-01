version 1.0

task Centrifugebuild {
  input {
    Boolean? reference_sequences_given
    Boolean? no_auto
    Int? bmax
    Int? bmax_divn
    Int? dcv
    Boolean? no_dc
    Boolean? no_ref
    Boolean? just_ref
    Int? off_rate
    Int? f_tab_chars
    File? conversion_table
    Boolean? taxonomy_tree
    Boolean? name_table
    Boolean? size_table
    Int? seed
    Boolean? quiet
    Int? threads
    Int? km_er_count
    String reference_in
    String centrifuge_index_base
  }
  command <<<
    centrifuge_build \
      ~{reference_in} \
      ~{centrifuge_index_base} \
      ~{if (reference_sequences_given) then "-c" else ""} \
      ~{if (no_auto) then "--noauto" else ""} \
      ~{if defined(bmax) then ("--bmax " +  '"' + bmax + '"') else ""} \
      ~{if defined(bmax_divn) then ("--bmaxdivn " +  '"' + bmax_divn + '"') else ""} \
      ~{if defined(dcv) then ("--dcv " +  '"' + dcv + '"') else ""} \
      ~{if (no_dc) then "--nodc" else ""} \
      ~{if (no_ref) then "--noref" else ""} \
      ~{if (just_ref) then "--justref" else ""} \
      ~{if defined(off_rate) then ("--offrate " +  '"' + off_rate + '"') else ""} \
      ~{if defined(f_tab_chars) then ("--ftabchars " +  '"' + f_tab_chars + '"') else ""} \
      ~{if defined(conversion_table) then ("--conversion-table " +  '"' + conversion_table + '"') else ""} \
      ~{if (taxonomy_tree) then "--taxonomy-tree" else ""} \
      ~{if (name_table) then "--name-table" else ""} \
      ~{if (size_table) then "--size-table" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er_count) then ("--kmer-count " +  '"' + km_er_count + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_sequences_given: "reference sequences given on cmd line (as\\n<reference_in>)"
    no_auto: "disable automatic -p/--bmax/--dcv memory-fitting"
    bmax: "max bucket sz for blockwise suffix-array builder"
    bmax_divn: "max bucket sz as divisor of ref len (default: 4)"
    dcv: "diff-cover period for blockwise (default: 1024)"
    no_dc: "disable diff-cover (algorithm becomes quadratic)"
    no_ref: "don't build .3/.4.bt2 (packed reference) portion"
    just_ref: "just build .3/.4.bt2 (packed reference) portion"
    off_rate: "SA is sampled every 2^offRate BWT chars (default: 5)"
    f_tab_chars: "# of chars consumed in initial lookup (default: 10)"
    conversion_table: "a table that converts any id to a taxonomy id"
    taxonomy_tree: "<file name>  taxonomy tree"
    name_table: "<file name>  names corresponding to taxonomic IDs"
    size_table: "<file name>  table of contig (or genome) sizes"
    seed: "seed for random number generator"
    quiet: "verbose output (for debugging)"
    threads: "number of alignment threads to launch (1)"
    km_er_count: "k size for counting the number of distinct k-mer"
    reference_in: "comma-separated list of files with ref sequences"
    centrifuge_index_base: "write cf data to files with this dir/basename"
  }
  output {
    File out_stdout = stdout()
  }
}