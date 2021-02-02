version 1.0

task RunStructdrpy {
  command <<<
    run_structdr_py
  >>>
  output {
    File out_stdout = stdout()
  }
}