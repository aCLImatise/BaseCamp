version 1.0

task CravatadminInfo {
  input {
    Boolean? local
    String module
  }
  command <<<
    cravat_admin info \
      ~{module} \
      ~{if (local) then "--local" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    local: "Include local info"
    module: "Module to get info about"
  }
  output {
    File out_stdout = stdout()
  }
}