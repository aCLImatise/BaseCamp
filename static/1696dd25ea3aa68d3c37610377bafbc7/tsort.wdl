version 1.0

task Tsort {
  input {
    File? var_file
  }
  command <<<
    tsort \
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