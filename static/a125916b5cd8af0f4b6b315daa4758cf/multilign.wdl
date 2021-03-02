version 1.0

task Multilign {
  input {
    File configuration_file
  }
  command <<<
    multilign \
      ~{configuration_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    configuration_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}