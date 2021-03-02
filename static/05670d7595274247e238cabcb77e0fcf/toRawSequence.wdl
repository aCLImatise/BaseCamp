version 1.0

task ToRawSequence {
  command <<<
    toRawSequence
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}