version 1.0

task CruxVersion {
  input {
    String crux
  }
  command <<<
    crux version \
      ~{crux}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
  }
  output {
    File out_stdout = stdout()
  }
}