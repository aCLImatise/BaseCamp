version 1.0

task TailLines {
  input {
    File var_file
  }
  command <<<
    tailLines \
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