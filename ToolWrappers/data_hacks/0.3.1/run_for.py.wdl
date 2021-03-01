version 1.0

task RunForpy {
  command <<<
    run_for_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}