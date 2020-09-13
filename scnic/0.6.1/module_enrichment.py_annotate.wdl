version 1.0

task ModuleEnrichmentpyAnnotate {
  input {
    String? correl_s
    String? tree
    String? genome
    String? modules
    String? var_output
    Boolean? skip_kos
    String? to_keep
  }
  command <<<
    module_enrichment_py annotate \
      ~{if defined(correl_s) then ("--correls " +  '"' + correl_s + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(modules) then ("--modules " +  '"' + modules + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (skip_kos) then "--skip_kos" else ""} \
      ~{if defined(to_keep) then ("--to_keep " +  '"' + to_keep + '"') else ""}
  >>>
  parameter_meta {
    correl_s: ""
    tree: ""
    genome: ""
    modules: ""
    var_output: ""
    skip_kos: ""
    to_keep: ""
  }
  output {
    File out_stdout = stdout()
  }
}