version 1.0

task FastRepspy {
  command <<<
    fast_reps_py
  >>>
  output {
    File out_stdout = stdout()
  }
}