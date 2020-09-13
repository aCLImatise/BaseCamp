version 1.0

task False {
  input {
    String? ignored
    String? var_command
    String? line
    String? arguments
  }
  command <<<
    false \
      ~{ignored} \
      ~{var_command} \
      ~{line} \
      ~{arguments}
  >>>
  parameter_meta {
    ignored: ""
    var_command: ""
    line: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}