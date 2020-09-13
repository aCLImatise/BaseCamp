version 1.0

task RunGraphdrpy {
  command <<<
    run_graphdr_py
  >>>
  output {
    File out_stdout = stdout()
  }
}