version 1.0

task BoltHelp {
  input {
    String genie
    String help
  }
  command <<<
    bolt help \
      ~{genie} \
      ~{help}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genie: ""
    help: ""
  }
  output {
    File out_stdout = stdout()
  }
}