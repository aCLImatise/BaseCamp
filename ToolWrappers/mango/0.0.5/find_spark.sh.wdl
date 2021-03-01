version 1.0

task Findsparksh {
  input {
    String which
    String? var_command
  }
  command <<<
    find_spark_sh \
      ~{which} \
      ~{var_command}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    which: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}