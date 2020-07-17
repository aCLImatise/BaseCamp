version 1.0

task ModuleEnrichment.pyStats {
  input {
    String? correl_s
    String? modules
  }
  command <<<
    module_enrichment.py stats \
      ~{if defined(correl_s) then ("--correls " +  '"' + correl_s + '"') else ""} \
      ~{if defined(modules) then ("--modules " +  '"' + modules + '"') else ""}
  >>>
  parameter_meta {
    correl_s: ""
    modules: ""
  }
}