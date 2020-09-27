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