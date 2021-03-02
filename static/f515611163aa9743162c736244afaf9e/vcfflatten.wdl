version 1.0

task Vcfflatten {
  input {
    File? var_file
  }
  command <<<
    vcfflatten \
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