version 1.0

task Drtext {
  input {
    Boolean? resources
  }
  command <<<
    drtext \
      ~{if (resources) then "-resources" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    resources: ": enter resource value: Error: Unable to get reply from user - end of standard input"
  }
  output {
    File out_stdout = stdout()
  }
}