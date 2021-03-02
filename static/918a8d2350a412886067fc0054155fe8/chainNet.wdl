version 1.0

task ChainNet {
  input {
    Int? min_space
    String? min_fill
    Float? min_score
    Int? verbose
    Boolean? incl_hap
    String in_dot_chain
    String target_dot_sizes
    String query_dot_sizes
    String target_dotnet
  }
  command <<<
    chainNet \
      ~{in_dot_chain} \
      ~{target_dot_sizes} \
      ~{query_dot_sizes} \
      ~{target_dotnet} \
      ~{if defined(min_space) then ("-minSpace " +  '"' + min_space + '"') else ""} \
      ~{if defined(min_fill) then ("-minFill " +  '"' + min_fill + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if (incl_hap) then "-inclHap" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_space: "- minimum gap size to fill, default 25"
    min_fill: "- default half of minSpace"
    min_score: "- minimum chain score to consider, default 2000.0"
    verbose: "- Alter verbosity (default 1)"
    incl_hap: "- include query sequences name in the form *_hap*|*_alt*.\\nNormally these are excluded from nets as being haplotype\\npseudochromosomes\\n"
    in_dot_chain: ""
    target_dot_sizes: ""
    query_dot_sizes: ""
    target_dotnet: ""
  }
  output {
    File out_stdout = stdout()
  }
}