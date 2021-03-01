version 1.0

task FastRepspy {
  command <<<
    fast_reps_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}