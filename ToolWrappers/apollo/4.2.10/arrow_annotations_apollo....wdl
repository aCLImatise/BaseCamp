version 1.0

task ArrowAnnotationsApollo {
  input {
    String arrow
    String annotations
    String var_command
    String? args
  }
  command <<<
    arrow annotations apollo___ \
      ~{arrow} \
      ~{annotations} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    arrow: ""
    annotations: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}