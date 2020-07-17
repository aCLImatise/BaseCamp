version 1.0

task ChainNet {
  input {
    String? min_space
    String? min_fill
    String? min_score
    String? verbose
    Boolean? incl_hap
    String in_dot_chain
    String target_dot_sizes
    String query_dot_sizes
    String target_dotnet
    String query_dotnet
  }
  command <<<
    chainNet \
      ~{in_dot_chain} \
      ~{target_dot_sizes} \
      ~{query_dot_sizes} \
      ~{target_dotnet} \
      ~{query_dotnet} \
      ~{if defined(min_space) then ("-minSpace " +  '"' + min_space + '"') else ""} \
      ~{if defined(min_fill) then ("-minFill " +  '"' + min_fill + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{true="-inclHap" false="" incl_hap}
  >>>
  parameter_meta {
    min_space: "- minimum gap size to fill, default 25"
    min_fill: "- default half of minSpace"
    min_score: "- minimum chain score to consider, default 2000.0"
    verbose: "- Alter verbosity (default 1)"
    incl_hap: "- include query sequences name in the form *_hap*|*_alt*. Normally these are excluded from nets as being haplotype pseudochromosomes"
    in_dot_chain: ""
    target_dot_sizes: ""
    query_dot_sizes: ""
    target_dotnet: ""
    query_dotnet: ""
  }
}