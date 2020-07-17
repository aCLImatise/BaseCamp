version 1.0

task SimkaCountProcess {
  input {
    String nohup
    String var_command
    String? arg
  }
  command <<<
    simkaCountProcess \
      ~{nohup} \
      ~{var_command} \
      ~{arg}
  >>>
  parameter_meta {
    nohup: ""
    var_command: ""
    arg: ""
  }
}