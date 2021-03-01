version 1.0

task CorrectFromMapBasicspy {
  command <<<
    CorrectFromMapBasics_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}