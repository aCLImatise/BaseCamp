version 1.0

task ModuleEnrichmentpyPerms {
  input {
    String? perms
    String? correl_s
  }
  command <<<
    module_enrichment_py perms \
      ~{if defined(perms) then ("--perms " +  '"' + perms + '"') else ""} \
      ~{if defined(correl_s) then ("--correls " +  '"' + correl_s + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scnic:0.6.2--py_0"
  }
  parameter_meta {
    perms: ""
    correl_s: ""
  }
  output {
    File out_stdout = stdout()
  }
}