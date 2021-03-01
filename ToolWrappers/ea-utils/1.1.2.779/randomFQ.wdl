version 1.0

task RandomFQ {
  command <<<
    randomFQ
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}