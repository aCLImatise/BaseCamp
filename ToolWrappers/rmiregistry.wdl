version 1.0

task Rmiregistry {
  input {
    Boolean? runtime_flag_pass
    String options
    String port
  }
  command <<<
    rmiregistry \
      ~{options} \
      ~{port} \
      ~{if (runtime_flag_pass) then "-J" else ""}
  >>>
  parameter_meta {
    runtime_flag_pass: "<runtime flag> Pass argument to the java interpreter"
    options: ""
    port: ""
  }
  output {
    File out_stdout = stdout()
  }
}