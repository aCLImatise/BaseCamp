version 1.0

task SequenceBasicspy {
  command <<<
    SequenceBasics_py
  >>>
  output {
    File out_stdout = stdout()
  }
}