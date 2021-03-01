version 1.0

task MismatchCounter {
  command <<<
    mismatchCounter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}