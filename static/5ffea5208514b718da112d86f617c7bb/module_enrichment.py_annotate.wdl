version 1.0

task ModuleEnrichmentpyAnnotate {
  input {
    String? tree
    String? correl_s
  }
  command <<<
    module_enrichment_py annotate \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(correl_s) then ("--correls " +  '"' + correl_s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tree: ""
    correl_s: ""
  }
  output {
    File out_stdout = stdout()
  }
}