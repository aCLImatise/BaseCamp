version 1.0

task Exonerate {
  command <<<
    exonerate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}