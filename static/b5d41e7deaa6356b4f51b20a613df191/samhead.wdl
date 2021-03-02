version 1.0

task Samhead {
  input {
    File? var_file
  }
  command <<<
    samhead \
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