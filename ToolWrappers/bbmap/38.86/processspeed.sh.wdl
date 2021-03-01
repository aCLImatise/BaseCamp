version 1.0

task Processspeedsh {
  input {
    File var_file
  }
  command <<<
    processspeed_sh \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}