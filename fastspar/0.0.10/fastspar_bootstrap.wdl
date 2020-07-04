version 1.0

task FastsparBootstrap {
  input {
    File? c_slash_otu_table
    File? n_slash_number
    String? p_slash_prefix
    Int? threads
    Int? seed
    Boolean? _version_display
    File? otu_table
    Int? number
    String? prefix
    String bootstraps
  }
  command <<<
    fastspar_bootstrap \
      ~{bootstraps} \
      ~{if defined(c_slash_otu_table) then ("-c/--otu_table " +  '"' + c_slash_otu_table + '"') else ""} \
      ~{if defined(n_slash_number) then ("-n/--number " +  '"' + n_slash_number + '"') else ""} \
      ~{if defined(p_slash_prefix) then ("-p/--prefix " +  '"' + p_slash_prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-v" false="" _version_display} \
      ~{if defined(otu_table) then ("--otu_table " +  '"' + otu_table + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    c_slash_otu_table: "OTU input table"
    n_slash_number: "Number of bootstrap samples to generate"
    p_slash_prefix: "Prefix out bootstrap output files"
    threads: "Number of threads (default: 1)"
    seed: "Random number generator seed (default: 1)"
    _version_display: "--version Display version information and exit"
    otu_table: ""
    number: ""
    prefix: ""
    bootstraps: ""
  }
}