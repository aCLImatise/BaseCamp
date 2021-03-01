version 1.0

task SequenceBasicspy {
  command <<<
    SequenceBasics_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}