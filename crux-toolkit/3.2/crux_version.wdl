version 1.0

task CruxVersion {
  input {
    String crux
  }
  command <<<
    crux version \
      ~{crux}
  >>>
  parameter_meta {
    crux: ""
  }
  output {
    File out_stdout = stdout()
  }
}