version 1.0

task AnnotateUntemplatedSequence {
  command <<<
    AnnotateUntemplatedSequence
  >>>
  output {
    File out_stdout = stdout()
  }
}