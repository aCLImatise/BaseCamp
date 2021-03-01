version 1.0

task AnnotateUntemplatedSequence {
  command <<<
    AnnotateUntemplatedSequence
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}