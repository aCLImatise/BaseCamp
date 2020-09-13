version 1.0

task ModuleEnrichmentpyStats {
  input {
    String? correl_s
    String? modules
    String? perms
    String? var_output
    Boolean? skip_kos
    String? to_keep
  }
  command <<<
    module_enrichment_py stats \
      ~{if defined(correl_s) then ("--correls " +  '"' + correl_s + '"') else ""} \
      ~{if defined(modules) then ("--modules " +  '"' + modules + '"') else ""} \
      ~{if defined(perms) then ("--perms " +  '"' + perms + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (skip_kos) then "--skip_kos" else ""} \
      ~{if defined(to_keep) then ("--to_keep " +  '"' + to_keep + '"') else ""}
  >>>
  parameter_meta {
    correl_s: ""
    modules: ""
    perms: ""
    var_output: ""
    skip_kos: ""
    to_keep: ""
  }
  output {
    File out_stdout = stdout()
  }
}