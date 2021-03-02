version 1.0

task True {
  input {
    String? ignored
    String? var_command
    String? line
    String? arguments
  }
  command <<<
    true \
      ~{ignored} \
      ~{var_command} \
      ~{line} \
      ~{arguments}
  >>>
  runtime {
    docker: "None"
  }
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