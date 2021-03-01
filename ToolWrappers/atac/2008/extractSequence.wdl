version 1.0

task ExtractSequence {
  command <<<
    extractSequence
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}