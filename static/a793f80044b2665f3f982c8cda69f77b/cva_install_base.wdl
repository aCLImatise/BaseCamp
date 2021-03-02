version 1.0

task CvaInstallbase {
  input {
    Boolean? force
  }
  command <<<
    cva install_base \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    force: "Overwrite existing modules"
  }
  output {
    File out_stdout = stdout()
  }
}