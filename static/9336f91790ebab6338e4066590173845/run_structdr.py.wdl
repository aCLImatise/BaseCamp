version 1.0

task RunStructdrpy {
  command <<<
    run_structdr_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}