version 1.0

task SequenceCompressionBasicspy {
  command <<<
    SequenceCompressionBasics_py
  >>>
  output {
    File out_stdout = stdout()
  }
}