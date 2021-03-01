version 1.0

task Overlap {
  command <<<
    overlap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}