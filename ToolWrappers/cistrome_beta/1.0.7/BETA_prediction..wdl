version 1.0

task BETAPrediction {
  input {
    String beta
  }
  command <<<
    BETA prediction_ \
      ~{beta}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    beta: ""
  }
  output {
    File out_stdout = stdout()
  }
}