version 1.0

task OptC4py {
  command <<<
    OptC4_py
  >>>
  output {
    File out_stdout = stdout()
  }
}