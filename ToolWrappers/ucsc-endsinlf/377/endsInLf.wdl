version 1.0

task EndsInLf {
  input {
    File var_file
  }
  command <<<
    endsInLf \
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