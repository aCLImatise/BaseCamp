version 1.0

task ChakinUtilDbshell {
  input {
    String options
  }
  command <<<
    chakin util dbshell \
      ~{options}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}