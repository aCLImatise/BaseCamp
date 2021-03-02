version 1.0

task Unlink {
  input {
    File var_file
  }
  command <<<
    unlink \
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