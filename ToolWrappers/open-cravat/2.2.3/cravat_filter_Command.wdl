version 1.0

task CravatfilterCommand {
  input {
    String? var_0
    File? var_1
    File? d
    String cravat_filter
  }
  command <<<
    cravat_filter Command \
      ~{cravat_filter} \
      ~{if defined(var_0) then ("-F " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("-f " +  '"' + var_1 + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    var_0: ""
    var_1: ""
    d: ""
    cravat_filter: ""
  }
  output {
    File out_stdout = stdout()
  }
}