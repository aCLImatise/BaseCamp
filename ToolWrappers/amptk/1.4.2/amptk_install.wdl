version 1.0

task AmptkInstall {
  input {
    Boolean? install_databases_choices
    Boolean? force
    String arguments
  }
  command <<<
    amptk install \
      ~{arguments} \
      ~{if (install_databases_choices) then "-i" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    install_databases_choices: "Install Databases. Choices: ITS, 16S, LSU, COI"
    force: "Over-write existing databases"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}