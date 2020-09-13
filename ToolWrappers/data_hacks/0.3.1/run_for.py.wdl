version 1.0

task RunForpy {
  command <<<
    run_for_py
  >>>
  output {
    File out_stdout = stdout()
  }
}