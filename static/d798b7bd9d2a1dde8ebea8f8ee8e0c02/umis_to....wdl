version 1.0

task UmisTo {
  input {
    String um_is
    String var_command
    String? args
  }
  command <<<
    umis to___ \
      ~{um_is} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    um_is: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}