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
    docker: "quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0"
  }
  parameter_meta {
    options: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}