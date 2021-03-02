version 1.0

task OcModuleInfo {
  input {
    Boolean? local
    String module
  }
  command <<<
    oc module info \
      ~{module} \
      ~{if (local) then "--local" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    local: "Include local info"
    module: "Module to get info about"
  }
  output {
    File out_stdout = stdout()
  }
}