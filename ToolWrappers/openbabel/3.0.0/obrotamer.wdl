version 1.0

task Obrotamer {
  input {
    File var_file
  }
  command <<<
    obrotamer \
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