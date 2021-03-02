version 1.0

task SequenceCompressionBasicspy {
  command <<<
    SequenceCompressionBasics_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}