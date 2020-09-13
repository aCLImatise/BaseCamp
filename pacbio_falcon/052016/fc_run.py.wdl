version 1.0

task FcRunpy {
  command <<<
    fc_run_py
  >>>
  output {
    File out_stdout = stdout()
  }
}