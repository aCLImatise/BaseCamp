version 1.0

task FcRunpy {
  command <<<
    fc_run_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}