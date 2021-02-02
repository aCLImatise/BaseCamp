version 1.0

task Ifne {
  input {
    Boolean? n
    String var_command
    String? args
  }
  command <<<
    ifne \
      ~{var_command} \
      ~{args} \
      ~{if (n) then "-n" else ""}
  >>>
  parameter_meta {
    n: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}