version 1.0

task FasterRepspy {
  command <<<
    faster_reps_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}