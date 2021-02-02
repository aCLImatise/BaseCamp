version 1.0

task FastsparBootstrap {
  input {
    File? c_slash_otu_table
    File? n_slash_number
    String? p_slash_prefix
    Int? threads
    Int? seed
    Boolean? _versiondisplay_version
    Int? number
    File? otu_table
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
      ~{if (_versiondisplay_version) then "-v" else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(otu_table) then ("--otu_table " +  '"' + otu_table + '"') else ""}
  >>>
  parameter_meta {
    c_slash_otu_table: "OTU input table"
    n_slash_number: "Number of bootstrap samples to generate"
    p_slash_prefix: "Prefix out bootstrap output files"
    threads: "Number of threads (default: 1)"
    seed: "Random number generator seed (default: 1)"
    _versiondisplay_version: "--version\\nDisplay version information and exit\\n"
    number: ""
    otu_table: ""
    bootstraps: ""
  }
  output {
    File out_stdout = stdout()
  }
}