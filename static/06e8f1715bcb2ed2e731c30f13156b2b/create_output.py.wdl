version 1.0

task CreateOutputpy {
  command <<<
    create_output_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}