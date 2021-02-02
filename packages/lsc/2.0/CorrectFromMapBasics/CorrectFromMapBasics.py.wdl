version 1.0

task CorrectFromMapBasicspy {
  command <<<
    CorrectFromMapBasics_py
  >>>
  output {
    File out_stdout = stdout()
  }
}