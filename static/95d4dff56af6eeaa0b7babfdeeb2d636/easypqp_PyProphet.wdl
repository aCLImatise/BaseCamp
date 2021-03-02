version 1.0

task EasypqpPyProphet {
  input {
    String easy_pqp
    Int command_one
    String? args
  }
  command <<<
    easypqp PyProphet \
      ~{easy_pqp} \
      ~{command_one} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easypqp:0.1.10--py_0"
  }
  parameter_meta {
    easy_pqp: ""
    command_one: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}