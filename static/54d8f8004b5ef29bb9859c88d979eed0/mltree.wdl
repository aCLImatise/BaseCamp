version 1.0

task Mltree {
  input {
    String rate_file
    File? var_file
  }
  command <<<
    mltree \
      ~{rate_file} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rate_file: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}