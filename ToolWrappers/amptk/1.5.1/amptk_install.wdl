version 1.0

task AmptkInstall {
  input {
    Boolean? install_databases_choices
    Boolean? local
    Boolean? force
    String arguments
  }
  command <<<
    amptk install \
      ~{arguments} \
      ~{if (install_databases_choices) then "-i" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.1--py_1"
  }
  parameter_meta {
    install_databases_choices: "Install Databases. Choices: ITS, 16S, LSU, COI"
    local: "Use local downloads.json instead of github version"
    force: "Over-write existing databases"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}