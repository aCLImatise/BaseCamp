version 1.0

task Fermi2plUtglog {
  input {
    String prefix
  }
  command <<<
    fermi2_pl utglog \
      ~{prefix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}