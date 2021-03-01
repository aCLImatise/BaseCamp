version 1.0

task BoltVersion {
  input {
    String genie
    String version
  }
  command <<<
    bolt version \
      ~{genie} \
      ~{version}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genie: ""
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}