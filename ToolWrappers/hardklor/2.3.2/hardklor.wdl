version 1.0

task Hardklor {
  input {
    File config_file
  }
  command <<<
    hardklor \
      ~{config_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}