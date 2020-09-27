version 1.0

task FasterRepspy {
  command <<<
    faster_reps_py
  >>>
  output {
    File out_stdout = stdout()
  }
}