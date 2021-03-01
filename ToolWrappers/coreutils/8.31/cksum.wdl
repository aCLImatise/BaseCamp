version 1.0

task Cksum {
  input {
    File? var_file
  }
  command <<<
    cksum \
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