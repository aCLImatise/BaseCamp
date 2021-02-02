version 1.0

task Falcontask {
  input {
    String? var_task
  }
  command <<<
    falcon_task \
      ~{var_task}
  >>>
  parameter_meta {
    var_task: ""
  }
  output {
    File out_stdout = stdout()
  }
}