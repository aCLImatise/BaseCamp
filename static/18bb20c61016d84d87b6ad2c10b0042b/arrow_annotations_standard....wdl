version 1.0

task ArrowAnnotationsStandard {
  input {
    String arrow
    String annotations
    String var_command
    String? args
  }
  command <<<
    arrow annotations standard___ \
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